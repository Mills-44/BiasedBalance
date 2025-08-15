SMODS.Joker {
    key = "practical_perfectionist",
    atlas = "Joker2",
    pos = {
        x = 0,
        y = 0
    },
    rarity = 1,
    cost = 6, 
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {
        extra = {
            money = 3,
            size = 5
        }
    },
    loc_vars = function(self, info_queue, card)
        return { 
            vars = { 
                card.ability.extra.money 
            } 
        }
    end,
    calculate = function(self, card, context)
        if context.joker_main and #context.scoring_hand >= card.ability.extra.size then
            ease_dollars(card.ability.extra.money)
        return {
                message = "+$3!",
                colour = G.C.GOLD
                }
        end
    end
}