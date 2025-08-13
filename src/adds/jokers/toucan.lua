SMODS.Joker {
    atlas = "Joker",
    key = "toucan",
    pos = {
        x = 4,
        y = 4
    },
    rarity = 2,
    cost = 5,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play and context.other_card.config.center.key ~= 'c_base' then
            return {
                repetitions = 1
            }
        end
    end
}