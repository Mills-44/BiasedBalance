SMODS.Joker {
    atlas = "Joker",
    key = "last_dance",
    pos = {
        x = 0,
        y = 0
    },
    rarity = 1,
    cost = 5,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = { 
        extra = { 
            retrigger = 1,
        } 
    },
    loc_vars = function(self, info_queue, card)
        return { 
            vars = { 
        } 
    }
    end,
    calculate = function(self, card, context)
            if context.repetition and context.cardarea == G.play and #context.scoring_hand == 5 then
                if (context.other_card == context.scoring_hand[4]) or (context.other_card == context.scoring_hand[5]) then
                    return {
                        message = "Again!",
                        repetitions = card.ability.extra.retrigger,
                        card = card
                    }
                end
            end
            if context.repetition and context.cardarea == G.play and #context.scoring_hand == 4 then
                if (context.other_card == context.scoring_hand[3]) or (context.other_card == context.scoring_hand[4]) then
                    return {
                        message = "Again!",
                        repetitions = card.ability.extra.retrigger,
                        card = card
                    }
                end    
            end
            if context.repetition and context.cardarea == G.play and #context.scoring_hand == 3 then
                if (context.other_card == context.scoring_hand[2]) or (context.other_card == context.scoring_hand[3]) then
                    return {
                        message = "Again!",
                        repetitions = card.ability.extra.retrigger,
                        card = card
                    }
                end    
            end
            if context.repetition and context.cardarea == G.play and #context.scoring_hand == 2 then
                if (context.other_card == context.scoring_hand[1]) or (context.other_card == context.scoring_hand[2]) then
                    return {
                        message = "Again!",
                        repetitions = card.ability.extra.retrigger,
                        card = card
                    }
                end    
            end
            if context.repetition and context.cardarea == G.play and #context.scoring_hand == 1 then
                if (context.other_card == context.scoring_hand[1]) then
                    return {
                        message = "Again!",
                        repetitions = card.ability.extra.retrigger,
                        card = card
                    }
                end    
            end
    end,
}