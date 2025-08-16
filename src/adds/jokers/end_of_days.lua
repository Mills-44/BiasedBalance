SMODS.Joker {
    atlas = "Joker",
    key = "end_of_days",
    pos = {
        x = 0,
        y = 0
    },
    rarity = 2,
    cost = 6,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {},
    loc_vars = function(self, info_queue, card)
        return { 
            vars = { 
            
        } 
    }
    end,
    calculate = function(self, card, context)
        if context.end_of_round and  G.GAME.current_round.hands_left == 0 then
             G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    local checker = 0
                    if G.consumeables.config.card_limit > #G.consumeables.cards and checker <= 0 then
                    checker = checker + 1
                    local chosen_spectral = pseudorandom_element(BiasedBalance.Spectrals, pseudoseed('choice'))
                    local spectral = create_card("Tarot", G.consumeables, nil, nil, nil, nil, 'c_' .. chosen_spectral )
                    spectral:add_to_deck()
                    G.consumeables:emplace(spectral)
                    end
                    return true
                end
                }))
        end
    end
}