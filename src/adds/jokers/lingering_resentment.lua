SMODS.Joker {
    atlas = "Joker",
    key = "lingering_resentment",
    pos = {
        x = 0,
        y = 0
    },
    rarity = 2,
    cost = 5,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = { 
        extra = { 
            xmult = 2,
            d_size = 1
        } 
    },
    loc_vars = function(self, info_queue, card)
        return { 
            vars = { 
                card.ability.extra.xmult
        } 
    }
    end,
    calculate = function(self, card, context)
        if context.setting_blind then
            G.E_MANAGER:add_event(Event({
                func = function()
                    ease_discard(-card.ability.extra.d_size, nil, true)
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
    end,
}