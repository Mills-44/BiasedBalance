SMODS.Joker {
    atlas = "Joker2",
    key = "eldritch_joker",
    pos = {
        x = 2,
        y = 0
    },
    rarity = 1,
    cost = 6,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = { 
        extra = { 
            xmult = 1,
            xmult_gain = .05,
        } 
    },
    loc_vars = function(self, info_queue, card)
        return { 
            vars = { 
                card.ability.extra.xmult_gain,
                card.ability.extra.xmult,
        } 
    }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            card.ability.extra.xmult = card.ability.extra.xmult + card.ability.extra.xmult_gain
        end
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult
            }
        end
        if context.end_of_round and context.cardarea == G.jokers then 
            card.ability.extra.xmult = 1
            return {
                message = "Reset!",
                colour = G.C.FILTER
            }
        end
    end,
}