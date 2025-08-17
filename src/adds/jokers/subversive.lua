SMODS.Joker {
    atlas = "Joker",
    key = "subversive",
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
            mult = 14,
            chips = 100
        }
    },
    loc_vars = function(self, info_queue, card)
        return { 
            vars = { 
                card.ability.extra.mult, 
                card.ability.extra.chips 
            } 
        }
    end,
    calculate = function(self, card, context)
        if context.joker_main and not context.individual then
            local calc = math.floor(hand_chips / 100)
            return { 
                mult = calc * 14
            }
        end
    end
}
