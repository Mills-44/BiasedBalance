SMODS.Joker {
    atlas = "Joker",
    key = "conspiracy",
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
            count = 0,
            total_rounds = 1
        } 
    },
    loc_vars = function(self, info_queue, card)
        return { 
            vars = { 
                card.ability.extra.count
        } 
    }
    end,
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
                card.ability.extra.count = card.ability.extra.count + 1
        end
        if context.selling_self and (card.ability.extra.count >= card.ability.extra.total_rounds) and not context.blueprint then
            if G.consumeables.config.card_limit > #G.consumeables.cards and checker <= 0 then
            local chosen_spectral = pseudorandom_element(BiasedBalance.Spectrals, pseudoseed('choice'))
                G.E_MANAGER:add_event(Event({
                    trigger = 'after',
                    delay = 0.4,
                    func = function()
                        local spectral = create_card("Spectral", G.consumeables, nil, nil, nil, nil, 'c_'.. chosen_spectral)
                        spectral:add_to_deck()
                        G.consumeables:emplace(spectral)
                        return true
                    end
                }))
            end
            SMODS.pseudorandom_probability(card, 'biasedBalance_conspiracy', 1, card.ability.extra.odds)
        end
    end
}