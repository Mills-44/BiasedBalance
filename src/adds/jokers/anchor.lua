SMODS.Joker {
    atlas = "Joker",
    key = "anchor",
    pos = {
        x = 1,
        y = 4
    },
    rarity = 2,
    cost = 6,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {
        extra = {
            x_mult = 3,
            chips = 400
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.x_mult, card.ability.extra.chips } }
    end,
    calculate = function(self, card, context)
        if context.joker_main and not context.individual and big(hand_chips) >= big(card.ability.extra.chips) then
            return { x_mult = card.ability.extra.x_mult }
        end
    end
}