SMODS.Joker {
    atlas = "Joker",
    key = "pierogi",
    pos = {
        x = 1,
        y = 1
    },
    rarity = 2,
    cost = 6,
    blueprint_compat = true,
    eternal_compat = false,
    perishable_compat = true,
    config = { 
        extra = { 
           xmult = 2,
           xmult_reroll = .05
        } 
    },
    loc_vars = function(self, info_queue, card)
        return { 
            vars = { 
                card.ability.extra.xmult_reroll,
                card.ability.extra.xmult
        } 
    }
    end,
    calculate = function(self, card, context)
        if context.reroll_shop then
            card.ability.extra.xmult = card.ability.extra.xmult - card.ability.extra.xmult_reroll
            return {
                message = "-.05 Mult",
                colour = G.C.MULT
            }
        end
        if context.joker_main then
            return {
                xmult = card.ability.extra.xmult
            }
        end
    end
}