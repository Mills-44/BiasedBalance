SMODS.Joker {
    atlas = "Joker",
    key = "dark_forest",
    pos = {
        x = 0,
        y = 0
    },
    rarity = 2,
    cost = 7,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = { 
        extra = { 
            xmult = 3,
            xmult_lose = .07
        } 
    },
    loc_vars = function(self, info_queue, card)
        return { 
            vars = { 
                card.ability.extra.xmult_lose,
                card.ability.extra.xmult
        } 
    }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            card.ability.extra.xmult = 3
            for _, c in ipairs(G.playing_cards or {}) do
                if c:is_suit('Diamonds') then
                    card.ability.extra.xmult = math.max(card.ability.extra.xmult - card.ability.extra.xmult_lose, 1)
                end
                if c:is_suit('Hearts') then
                    card.ability.extra.xmult = math.max(card.ability.extra.xmult - card.ability.extra.xmult_lose, 1)  
                end
            end
            return {
                xmult = card.ability.extra.xmult
            }
        end
    end
}