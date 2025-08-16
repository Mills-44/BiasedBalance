SMODS.Joker {
    key = "osmosis",
    rarity = 2,
    cost = 6,
    atlas = "Joker",
    pos = { 
        x = 0, 
        y = 0 
    },
    config = { 
        extra = { 
            mult = 5 
        } 
    },
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    loc_vars = function(self, info_queue, card)
        return { 
            vars = { 
                card.ability.extra.mult, 
                card.ability.extra.mult * (#G.playing_cards - 50)
            }  
        }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            return {
                mult = card.ability.extra.mult * (#G.playing_cards - 50)
            }
        end
    end
}