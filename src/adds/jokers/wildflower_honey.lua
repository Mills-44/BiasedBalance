SMODS.Joker {
    atlas = "Joker",
    key = "wildflower_honey",
    pos = {
        x = 0,
        y = 0
    },
    rarity = 2,
    cost = 8,
    blueprint_compat = true,
    eternal_compat = false,
    perishable_compat = true,
    config = { 
        extra = { 
           money = 10
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
        if context.skip_blind then
            ease_dollars(card.ability.extra.money)
            card.ability.extra.money = math.max(card.ability.extra.money - 1,0)
            return {
                message = "+$" .. card.ability.extra.money + 1 .. "!"
            }
        end
        if context.end_of_round and context.cardarea == G.jokers then 
            ease_dollars(card.ability.extra.money)
            card.ability.extra.money = math.max(card.ability.extra.money - 1,0)
            if card.ability.extra.money == 0 then
                return {
                    message = "No $ left!"
                }
            end
            return {
                message = "+$" .. card.ability.extra.money + 1 .. "!"
            }
        end
    end
}