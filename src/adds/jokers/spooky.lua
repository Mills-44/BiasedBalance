SMODS.Joker {
    atlas = "Joker",
    key = "spooky",
    pos = {
        x = 3,
        y = 1
    },
    rarity = 2,
    cost = 6,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = { extra = 4 },
    loc_vars = function(self, info_queue, card)
        return { vars = { G.GAME.probabilities.normal, card.ability.extra } }
    end,
    calculate = function(self, card, context)
        if context.before then
            if pseudorandom(pseudoseed 'j_biasedBalance_spooky') < G.GAME.probabilities.normal / card.ability.extra then
                local eligible = {}
                for _, v in ipairs(context.scoring_hand) do
                    if not v.edition and not BiasedBalance.edition_buffer[v] then
                        eligible[#eligible + 1] = v
                    end
                end
                if #eligible > 0 then
                    local apply = pseudorandom_element(eligible, pseudoseed 'j_biasedBalance_spooky')
                    local edition = poll_edition('j_biasedBalance_spooky', nil, nil, true, {
                        { name = 'e_foil',       weight = 30 },
                        { name = 'e_holo',       weight = 22.5 },
                        { name = 'e_negative',   weight = 32.5 },
                        { name = 'e_polychrome', weight = 15 },
                    })
                    BiasedBalance.edition_buffer[apply] = true
                    juice_card(context.blueprint_card or card)
                    apply:set_edition(edition, true, true)
                    G.E_MANAGER:add_event(Event {
                        blockable = false,
                        blocking = false,
                        func = function()
                            apply:set_edition(nil, true, true)
                            return true
                        end
                    })
                    G.E_MANAGER:add_event(Event {
                        func = function()
                            apply:set_edition(edition, true)
                            BiasedBalance.edition_buffer = {}
                            return true
                        end
                    })
                    delay(0.2)
                end
            end
            return {}, true
        end
    end
}