SMODS.Joker {
    key = "ballerina",
    atlas = "Joker",
    pos = {
        x = 0,
        y = 0
    },
    rarity = 1,
    blueprint_compat = false,
    eternal_compat = true,
    perishable_compat = true,
    config = { 
        extra = {
            size = 5,
            count = 0,
            money = 3
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
        if context.joker_main and #context.full_hand >= card.ability.extra.size then
            local checker = false
            local high_card = 0
            local pair = 0
            local two_pair = 0
            local three_of_kind = 0
            local straight = 0
            local flush = 0
            local four_of_kind = 0
            local full_house = 0
            local straight_flush = 0
            if next(context.scoring_name['High Card']) then
                high_card = high_card + 1
                if high_card <= 1 then
                    if card.ability.extra.count > 3 then
                        card.ability.extra.count = card.ability.extra.count + 1
                    else
                        checker = true
                    end
                else
                    card.ability.extra.count = 0
                end
            elseif next(context.scoring_name['Pair']) then
                pair = pair + 1
                if pair <= 1 then
                    if card.ability.extra.count > 3 then
                        card.ability.extra.count = card.ability.extra.count + 1
                    else
                        checker = true
                    end
                else
                    card.ability.extra.count = 0
                end
            elseif next(context.scoring_name['Two Pair']) then
                two_pair = two_pair + 1
                if two_pair <= 1 then
                    if card.ability.extra.count > 3 then
                        card.ability.extra.count = card.ability.extra.count + 1
                    else
                        checker = true
                    end
                else
                    card.ability.extra.count = 0
                end  
            elseif next(context.scoring_name['Three of a Kind']) then
                three_of_kind = three_of_kind + 1
                if three_of_kind <= 1 then
                    if card.ability.extra.count > 3 then
                        card.ability.extra.count = card.ability.extra.count + 1
                    else
                        checker = true
                    end
                else
                    card.ability.extra.count = 0
                end
            elseif next(context.scoring_name['Straight']) then
                straight = straight + 1
                if straight <= 1 then
                    if card.ability.extra.count > 3 then
                        card.ability.extra.count = card.ability.extra.count + 1
                    else
                        checker = true
                    end
                else
                    card.ability.extra.count = 0
                end
            elseif next(context.scoring_name['Flush']) then
                flush = flush + 1
                if flush <= 1 then
                    if card.ability.extra.count > 3 then
                        card.ability.extra.count = card.ability.extra.count + 1
                    else
                        checker = true
                    end
                else
                    card.ability.extra.count = 0
                end
            elseif next(context.scoring_name['Full House']) then
                full_house = full_house + 1
                if full_house <= 1 then
                    if card.ability.extra.count > 3 then
                        card.ability.extra.count = card.ability.extra.count + 1
                    else
                        checker = true
                    end
                else
                    card.ability.extra.count = 0
                end
            elseif next(context.scoring_name['Four of a Kind']) then
                four_of_kind = four_of_kind + 1
                if four_of_kind <= 1 then
                    if card.ability.extra.count > 3 then
                        card.ability.extra.count = card.ability.extra.count + 1
                    else
                        checker = true
                    end
                else
                    card.ability.extra.count = 0
                end
            elseif next(context.scoring_name['Straight Flush']) then
                straight_flush = straight_flush + 1
                if straight_flush <= 1 then
                    if card.ability.extra.count > 3 then
                        card.ability.extra.count = card.ability.extra.count + 1
                    else
                        checker = true
                    end
                else
                    card.ability.extra.count = 0
                end
            end
            if checker then
                local hand_chosen = pseudorandom_element(BiasedBalance.Poker_Hands, pseudoseed('choice'))
                G.E_MANAGER:add_event(Event({
                trigger = 'after',
                delay = 0.4,
                func = function()
                    if G.consumeables.config.card_limit > #G.consumeables.cards then
                    local chosen_tarot1 = pseudorandom_element(BiasedBalance.Tarots, pseudoseed('choice'))
                    local tarot1 = create_card("Tarot", G.consumeables, nil, nil, nil, nil, 'c_' .. chosen_tarot1 )
                    tarot1:add_to_deck()
                    G.consumeables:emplace(tarot1)
                    end
                    return true
                end
                }))
                ease_dollars(card.ability.extra.money)
                return {
                    level_up = true,
                    level_up_hand = hand_chosen
                }  
            end
        end
    end    
}