SMODS.Joker {
    atlas = "Joker2",
    key = "velvet_choker",
    pos = {
        x = 0,
        y = 7
    },
    rarity = 3,
    cost = 8,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    config = { 
        extra = {
            xmult = 3,
            hands = 1,
            discards = 1
        } 
    },
    loc_vars = function(self, info_queue, card)
        return { 
            vars = {
                card.ability.extra.xmult, 
                card.ability.extra.hands,
                card.ability.extra.discards
            } 
        }
    end,
    calculate = function(self, card, context)
        if context.setting_blind then
            G.E_MANAGER:add_event(Event({
                func = function()
                    ease_discard(-card.ability.extra.discards, nil, true)
                    ease_hands_played(-card.ability.extra.hands)
                    return true
                end
            }))
            return nil, true 
        end
        if context.joker_main then 
            return {
                xmult = card.ability.extra.xmult
            }
        end
    end
}