local raw_Card_set_ability = Card.set_ability
function Card:set_ability(...)
    if self.config.center and self.config.center.unset_ability and self.ability then
        self.config.center:unset_ability(self)
    end
    raw_Card_set_ability(self, ...)
end

local peafowl_override = 1
local function peafowl()
    local val = peafowl_override
    if not G.jokers then return val end
    for _, v in pairs(G.jokers.cards) do
        if v.config.center.key == 'j_biasedBalance_Peafowl' and not v.debuff then
            val = val * (1 + v.ability.extra)
        end
    end
    return val
end

SMODS.Enhancement:take_ownership("m_mult", {
    config = { extra = 4 },
    effect = "biasedBalance",
    loc_vars = function(_, _, card)
        return { vars = { SMODS.signed(card.ability.extra * peafowl()) } }
    end,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            return { mult = card.ability.extra * peafowl() }
        end
    end,
})

SMODS.Enhancement:take_ownership("m_bonus", {
    config = { extra = 30 },
    effect = "biasedBalance",
    loc_vars = function(_, _, card)
        return { vars = { SMODS.signed(card.ability.extra * peafowl()) } }
    end,
    set_ability = function(self, card)
        card.ability.bonus = (card.ability.bonus or 0) + card.ability.extra * peafowl()
    end,
    unset_ability = function(self, card)
        card.ability.bonus = (card.ability.bonus or 0) - card.ability.extra * peafowl()
    end,
    generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table, ...)
        local old = SMODS.Enhancement.super.generate_ui
        if desc_nodes == full_UI_table.main then
            SMODS.Enhancement.super.generate_ui = function() end
        end
        SMODS.Enhancement.generate_ui(self, info_queue, card, desc_nodes, specific_vars, full_UI_table, ...)
        SMODS.Enhancement.super.generate_ui = old
    end
})

SMODS.Enhancement:take_ownership("m_glass", {
    config = { extra = { x_mult = 1, odds = 4 } },
    effect = "biasedBalance",
    loc_vars = function(_, _, card)
        return { vars = { 1 + card.ability.extra.x_mult * peafowl(), G.GAME.probabilities.normal * peafowl(), card.ability.extra.odds } }
    end,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            return { x_mult = 1 + card.ability.extra.x_mult * peafowl() }
        end
        if context.destroy_card and context.cardarea == G.play and context.destroy_card == card
            and pseudorandom('glass') < G.GAME.probabilities.normal * peafowl() / card.ability.extra.odds then
            return { remove = true }
        end
    end,
})

SMODS.Enhancement:take_ownership("m_stone", {
    no_suit = true,
    no_rank = true,
    always_scores = true,
    replace_base_card = true,
    config = { extra = 50 },
    effect = "biasedBalance",
    loc_vars = function(_, _, card)
        return { vars = { SMODS.signed(card.ability.extra * peafowl()) } }
    end,
    set_ability = function(self, card)
        card.ability.bonus = (card.ability.bonus or 0) + card.ability.extra * peafowl()
    end,
    unset_ability = function(self, card)
        card.ability.bonus = (card.ability.bonus or 0) - card.ability.extra * peafowl()
    end,
    generate_ui = function(self, info_queue, card, desc_nodes, specific_vars, full_UI_table, ...)
        local old = SMODS.Enhancement.super.generate_ui
        if desc_nodes == full_UI_table.main then
            SMODS.Enhancement.super.generate_ui = function() end
        end
        SMODS.Enhancement.generate_ui(self, info_queue, card, desc_nodes, specific_vars, full_UI_table, ...)
        SMODS.Enhancement.super.generate_ui = old
    end
})

SMODS.Enhancement:take_ownership("m_steel", {
    config = { extra = 0.5 },
    effect = "biasedBalance",
    loc_vars = function(_, _, card)
        return { vars = { 1 + card.ability.extra * peafowl() } }
    end,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.hand then
            return { x_mult = 1 + card.ability.extra * peafowl() }
        end
    end,
})

local raw_Card_get_h_dollars = Card.get_h_dollars
function Card:get_h_dollars()
    return raw_Card_get_h_dollars(self) +
        (not self.debuff and self.config.center.get_h_dollars and self.config.center:get_h_dollars(self) or 0)
end

SMODS.Enhancement:take_ownership("m_gold", {
    config = { extra = 3 },
    effect = "biasedBalance",
    loc_vars = function(_, _, card)
        return { vars = { SMODS.signed_dollars(math.ceil(card.ability.extra * peafowl())) } }
    end,
    get_h_dollars = function(self, card)
        return math.ceil(card.ability.extra * peafowl())
    end,
})

SMODS.Enhancement:take_ownership("m_lucky", {
    config = { extra = { odds1 = 5, odds2 = 15, effect = 20 } },
    effect = "biasedBalance",
    loc_vars = function(_, _, card)
        return { vars = { G.GAME.probabilities.normal * peafowl(), card.ability.extra.effect, card.ability.extra.odds1, card.ability.extra.effect, card.ability.extra.odds2 } }
    end,
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play then
            local ret = {}
            if pseudorandom('lucky_mult') < G.GAME.probabilities.normal * peafowl() / card.ability.extra.odds1 then
                card.lucky_trigger = true
                ret.mult = card.ability.extra.effect
            end
            if pseudorandom('lucky_money') < G.GAME.probabilities.normal * peafowl() / card.ability.extra.odds2 then
                card.lucky_trigger = true
                ret.dollars = card.ability.extra.effect
            end
            return ret, true
        end
    end,
})

SMODS.Joker {
    atlas = "Joker",
    key = "peafowl",
    pos = {
        x = 3,
        y = 2
    },
    rarity = 1,
    cost = 3,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    config = { extra = 0.5 },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra * 100 } }
    end,
    add_to_deck = function(self, card)
        for _, v in pairs(G.playing_cards) do
            if v.config.center.effect == "biasedBalance" then
                if v.config.center.unset_ability then
                    peafowl_override = 1 / (1 + card.ability.extra)
                    v.config.center:unset_ability(v)
                    peafowl_override = 1
                    v.config.center:set_ability(v)
                end
            end
        end
    end,
    remove_from_deck = function(self, card)
        for _, v in pairs(G.playing_cards) do
            if v.config.center.effect == "biasedBalance" then
                if v.config.center.unset_ability then
                    v.config.center:unset_ability(v)
                    peafowl_override = 1 / (1 + card.ability.extra)
                    v.config.center:set_ability(v)
                    peafowl_override = 1
                end
            end
        end
    end
}