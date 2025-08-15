function BiasedBalance.illusion(card, type)
    if type ~= 'Base' and type ~= 'Enhanced' then return end
    local enhanced = card.config.center.key ~= 'c_base'
    local edition = poll_edition('illusion', G.GAME.edition_rate * 2, true)
    local seal = SMODS.poll_seal { key = 'illusion' }

    if G.GAME.used_vouchers["v_illusion"] and not enhanced then
        local i = 1
        while not edition and not seal do
            edition = poll_edition('illusion_resample' .. i, G.GAME.edition_rate, true)
            seal = SMODS.poll_seal { key = 'illusion' }
            i = i + 1
        end
    end

    if edition then
        card:set_edition(edition, true)
    end
    if seal then
        card:set_seal(seal, true)
    end
end
