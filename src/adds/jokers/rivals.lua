SMODS.Joker {
    atlas = "Joker",
    key = "rivals",
    pos = {
        x = 0,
        y = 5
    },
    rarity = 3,
    cost = 8,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = {
        extra = {
            x_mult = 2.25,
            hand = 'Two Pair'
        }
    },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.x_mult, localize(card.ability.extra.hand, 'poker_hands') } }
    end,
    calculate = function(self, card, context)
        if context.joker_main and not context.individual and next(context.poker_hands[card.ability.extra.hand]) then
            return { x_mult = card.ability.extra.x_mult }
        end
    end
}