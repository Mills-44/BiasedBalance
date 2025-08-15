SMODS.Booster:take_ownership_by_kind('Standard', {
    create_card = function(self, card, i)
        local _edition = poll_edition('standard_edition' .. G.GAME.round_resets.ante, 2, true)
        local _seal = SMODS.poll_seal({ mod = 10 })
        local set = (pseudorandom(pseudoseed('stdset' .. G.GAME.round_resets.ante)) > 0.6) and "Enhanced" or "Base"

        if G.GAME.used_vouchers["v_illusion"] then
            while not _edition and not _seal and set == "Base" do
                _edition = poll_edition('standard_edition' .. G.GAME.round_resets.ante, 2, true)
                _seal = SMODS.poll_seal({ mod = 10 })
                set = (pseudorandom(pseudoseed('stdset' .. G.GAME.round_resets.ante)) > 0.6) and "Enhanced" or "Base"
            end
        end

        return {
            set = set,
            edition = _edition,
            seal = _seal,
            area = G.pack_cards,
            skip_materialize = true,
            soulable = true,
            key_append =
            "sta"
        }
    end,
})