SMODS.Joker {
    atlas = "Joker",
    key = "my_green_joker",
    pos = {
        x = 2,
        y = 7
    },
    rarity = 1,
    cost = 5,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    config = { 
        extra = { 
            mult = 0,
            mult_gain = 1,
            size = 4
        } 
    },
    loc_vars = function(self, info_queue, card)
        return { 
            vars = { 
                card.ability.extra.mult_gain,
                card.ability.extra.mult
        } 
    }
    end,
    calculate = function(self, card, context)
        if context.joker_main and #context.scoring_hand >= card.ability.extra.size then
            card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
            return {
                mult = card.ability.extra.mult
            }
        end
        if context.joker_main and #context.scoring_hand < card.ability.extra.size then
            card.ability.extra.mult = math.max(card.ability.extra.mult - card.ability.extra.mult_gain, 0)
            return {
                mult = card.ability.extra.mult
            }
        end
    end
}