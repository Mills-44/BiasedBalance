SMODS.Joker {
    atlas = "Joker",
    key = "wallpaper",
    pos = {
        x = 0,
        y = 4
    },
    rarity = 1,
    cost = 6,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    config = { 
        extra = { 
            xmult = 2,
        } 
    },
    loc_vars = function(self, info_queue, card)
        return { 
            vars = { 
                card.ability.extra.xmult
        } 
    }
    end,
    
    calculate = function(self, card, context)
        local diamonds, hearts, clubs, spades = 0, 0, 0, 0
        local suit_count = 0
        if context.individual and context.cardarea == G.hand then
            if context.other_card:is_suit('Diamonds') then
                diamonds = 1
            elseif context.other_card:is_suit('Hearts') then
                hearts = 1
            elseif context.other_card:is_suit('Spades') then
                spades = 1
            elseif context.other_card:is_suit('Clubs') then
                clubs = 1
            end
        end
        if context.joker_main then
            suit_count = diamonds + hearts + spades + clubs
            if suit_count == 2 then
                return {
                    xmult = 2
                }
            else
                return {
                    message = "Nope!",
                    colour = G.C.FILTER
                }
            end
        end
    end
}

