SMODS.Joker {
    atlas = "Joker",
    key = "poacher",
    pos = {
        x = 3,
        y = 4
    },
    rarity = 2,
    cost = 8,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = { extra = 7 },
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_CENTERS.m_wild
        return { vars = { G.GAME.probabilities.normal, card.ability.extra } }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play then
            if not context.other_card.biasedBalance_buffer and pseudorandom 'j_biasedBalance_Poacher' < G.GAME.probabilities.normal / card.ability.extra then
                local other_card = context.other_card
                other_card.biasedBalance_buffer = true
                card = context.blueprint_card or card
                G.E_MANAGER:add_event(Event {
                    trigger = 'after',
                    delay = 0.4,
                    func = function()
                        play_sound('tarot1')
                        card:juice_up(0.3, 0.5)
                        other_card.biasedBalance_buffer = nil
                        return true
                    end
                })
                G.E_MANAGER:add_event(Event {
                    trigger = 'after',
                    delay = 0.15,
                    func = function()
                        other_card:flip()
                        play_sound('card1', 0.85)
                        other_card:juice_up(0.3, 0.3)
                        return true
                    end
                })
                delay(0.2)
                G.E_MANAGER:add_event(Event {
                    trigger = 'after',
                    delay = 0.1,
                    func = function()
                        other_card:set_ability(G.P_CENTERS.m_wild)
                        return true
                    end
                })
                G.E_MANAGER:add_event(Event {
                    trigger = 'after',
                    delay = 0.15,
                    func = function()
                        other_card:flip()
                        play_sound('tarot2', 0.85, 0.6)
                        other_card:juice_up(0.3, 0.3)
                        return true
                    end
                })
                delay(0.5)
            end
            return nil, true
        end
    end
}