SMODS.Joker {
    atlas = "Joker",
    key = "flavorful_joker",
    pos = {
        x = 3,
        y = 5
    },
    rarity = 3,
    cost = 9,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = { extra = { chips = 75 } },
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips } }
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            local count = 0
            for i = 1, #G.jokers.cards do
                if G.jokers.cards[i].edition then count = count + 1 end
            end
            if count >= 0 then
                return { chips = card.ability.extra.chips * count }
            end
        end
    end,
}