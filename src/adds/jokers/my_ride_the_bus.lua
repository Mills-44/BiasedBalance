SMODS.Joker {
    atlas = "Joker",
    key = "my_ride_the_bus",
    pos = {
        x = 3,
        y = 7
    },
    rarity = 1,
    cost = 6,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    config = { 
        extra = { 
            mult = 0,
            mult_gain = 1,
            mult_lose = 3,
            checker = 0
        } 
    },
    loc_vars = function(self, info_queue, card)
        return { 
            vars = { 
                card.ability.extra.mult_gain,
                card.ability.extra.mult_lose,
                card.ability.extra.mult
        } 
    }
    end,
    calculate = function(self, card, context)
        if context.before and context.main_eval and not context.blueprint then
            local faces = false
            for _, playing_card in ipairs(context.scoring_hand) do
                if playing_card:is_face() then
                    faces = true
                    break
                end
            end
            if faces then
                card.ability.extra.mult = math.max(card.ability.extra.mult - card.ability.extra.mult_lose, 0)
            else
                card.ability.extra.mult = card.ability.extra.mult + card.ability.extra.mult_gain
            end
        end
        if context.joker_main then
            return {
                mult = card.ability.extra.mult
            }
        end
    end
}
