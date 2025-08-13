SMODS.Joker {
    atlas = "Joker",
    key = "free_lunch",
    pos = {
        x = 2,
        y = 3
    },
    rarity = 2,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { 30, 35 } }
    end
}