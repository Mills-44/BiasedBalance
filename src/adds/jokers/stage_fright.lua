SMODS.Joker {
    atlas = "Joker",
    key = "stage_fright",
    pos = {
        x = 0,
        y = 0
    },
    rarity = 2,
    cost = 6,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    config = { 
        extra = { 
            chips = 0,
            chip_gain = 5
        } 
    },
    loc_vars = function(self, info_queue, card)
        return { 
            vars = { 
                card.ability.extra.chip_gain,
                card.ability.extra.chips
        } 
    }
    end,
    calculate = function(self, card, context)
        if context.before and context.main_eval and G.GAME.current_round.hands_played == 0 then
            local faces = 0
            for _, playing_card in ipairs(context.scoring_hand) do
                if playing_card:is_face() then
                    faces = faces + 1
                end
            end      
            card.ability.extra.chips = card.ability.extra.chips + (card.ability.extra.chip_gain * faces)
        end
        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end
    end
}