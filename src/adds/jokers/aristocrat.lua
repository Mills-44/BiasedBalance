SMODS.Joker {
    atlas = "Joker",
    key = "aristocrat",
    pos = {
        x = 0,
        y = 0
    },
    rarity = 1,
    cost = 5,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = { 
        extra = { 
            chips = 0,
            chip_gain = 10
        } 
    },
    loc_vars = function(self, info_queue, card)
        return { 
            vars = { 
                card.ability.extra.chip_gain,
                card.ability.extra.chips
        } 
    }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            card.ability.extra.chips = 0
            for _, c in ipairs(G.playing_cards or {}) do
                if c:get_id() == 11 or c:get_id() == 12 or c:get_id() == 13 then
                    card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_gain
                end
            end
            return {
                chips = card.ability.extra.chips
            }
        end
    end,
}