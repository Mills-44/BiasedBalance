local poker_hands = {
    -- ["High Card"] = { 1, 15 }, -- Pluto
    -- ["Pair"] = { 1, 20 }, --Mercury
    ["Two Pair"] = { 2, 15 }, -- Uranus
    ["Three of a Kind"] = { 2, 20 }, -- Venus
    ["Straight"] = { 3, 35 }, -- Saturn
    ["Flush"] = { 2, 20 }, -- Jupiter
    ["Full House"] = { 3, 25 }, -- Earth
    ["Four of a Kind"] = { 3, 40 }, -- Mars
    ["Straight Flush"] = { 5, 50 }, -- Neptune
    ["Five of a Kind"] = { 4, 50, 16, 160 }, --Planet X
    ["Flush House"] = { 5, 40, 18, 175 }, -- Ceres
    ["Flush Five"] = { 5, 60, 22, 220 }, -- Eris
}

local raw_Game_init_game_object = Game.init_game_object
function Game:init_game_object()
    local ret = raw_Game_init_game_object(self)
    for k, v in pairs(poker_hands) do
        ret.hands[k].l_mult = v[1]
        ret.hands[k].l_chips = v[2]
        if v[3] then
            ret.hands[k].mult = v[3]
            ret.hands[k].s_mult = v[3]
            ret.hands[k].chips = v[4]
            ret.hands[k].s_chips = v[4]
        end
    end
    return ret
end