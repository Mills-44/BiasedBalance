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
        if context.joker_main then
            -- Track which suits appear
            local suits_seen = {}
            for i = 1, #context.scoring_hand do
                local c = context.scoring_hand[i]
                if c:is_suit('Hearts', true) then
                    suits_seen['Hearts'] = true
                elseif c:is_suit('Diamonds', true) then
                    suits_seen['Diamonds'] = true
                elseif c:is_suit('Spades', true) then
                    suits_seen['Spades'] = true
                elseif c:is_suit('Clubs', true) then
                    suits_seen['Clubs'] = true
                end
            end

            -- Count distinct suits
            local distinct = 0
            for _, v in pairs(suits_seen) do
                if v then distinct = distinct + 1 end
            end

            -- Condition: no more than 2 suits
            if distinct <= 2 then
                return {
                    xmult = card.ability.extra.xmult
                }
            end
        end
    end,
}

