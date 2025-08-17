---Registers a list of items in a custom order
---@param items table
---@param path string
function BiasedBalance.file_loader(items, path)
  for i = 1, #items do
    SMODS.load_file(path .. "/" .. items[i] .. ".lua")()
  end
end

-- Subtracts money from total
function BiasedBalance.lose_up_to(dollars)
  local lose = math.max(0, math.min(G.GAME.dollars - G.GAME.bankrupt_at, dollars))
    if lose ~= 0 then
        ease_dollars(-lose, true)
    end
end

-- Destroy Highlighted Cards
function BiasedBalance.destroy_highlighted(used_tarot)
    local destroyed_cards = {}
    for _, v in ipairs(G.hand.highlighted) do
        destroyed_cards[#destroyed_cards + 1] = v
    end
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.4,
        func = function()
            play_sound('tarot1')
            used_tarot:juice_up(0.3, 0.5)
            return true
        end
    }))
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.1,
        func = function()
            for i = #destroyed_cards, 1, -1 do
                local card = destroyed_cards[i]
                if card.ability.name == 'Glass Card' then
                    card:shatter()
                else
                    card:start_dissolve(nil, i ~= #destroyed_cards)
                end
            end
            return true
        end
    }))
    return destroyed_cards
end

-- Juice Up and Flip for Cards
function BiasedBalance.juice_flip(used_tarot)
    G.E_MANAGER:add_event(Event({
        trigger = 'after',
        delay = 0.4,
        func = function()
            play_sound('tarot1')
            used_tarot:juice_up(0.3, 0.5)
            return true
        end
    }))
    for i = 1, #G.hand.cards do
        local percent = 1.15 - (i - 0.999) / (#G.hand.cards - 0.998) * 0.3
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.15,
            func = function()
                G.hand.cards[i]:flip(); play_sound('card1', percent); G.hand.cards[i]:juice_up(0.3, 0.3); return true
            end
        }))
    end
end

-- Reroll Scale
function BiasedBalance.reroll_scale()
    return G.GAME.modifiers.reroll_scale or 1
end

-- Setting blinds
function BiasedBalance.on_set_blind(blind)
    for i = 1, #G.GAME.tags do
        G.GAME.tags[i]:apply_to_run({
            type = 'biasedBalance_set_blind',
            blind = blind
        })
    end
  end

---Returns true with probability `chance` (0.0 to 1.0)
---@param chance number
---@return boolean
function BiasedBalance.random_chance(chance)
    return math.random() < chance
end

-- Tag Functionality
local rare_sticker_tags = { "negative", "foil", "holo", "polychrome" }
for _, tag_type in ipairs(rare_sticker_tags) do
    SMODS.Tag:take_ownership(tag_type, {
        apply = function(self, tag, context)
            if context.type == 'store_joker_modify' and not context.card.edition and not context.card.temp_edition and context.card.config.center.set == 'Joker' then
                if not G.GAME.modifiers.all_eternal then
                    context.card:set_eternal(false)
                end
                context.card:set_perishable(false)
                context.card:set_rental(false)

                local choice = pseudorandom("sticker_tag_" .. tag_type)
                if choice < 0.1 then
                    context.card:set_eternal(true)
                elseif choice < 0.2 and not G.GAME.modifiers.all_eternal then
                    context.card:set_perishable(false)
                end

                if pseudorandom("sticker_tag_" .. tag_type) < 0.1 then
                    context.card:set_rental(true)
                end
            end
        end
    })
end

-- Edition Functionality
BiasedBalance.edition_buffer = {}

-- Cost Set
local raw_Card_set_cost = Card.set_cost
function Card:set_cost(...)
    if self.config.center.key == 'j_biasedBalance_free_lunch' then
        self.sell_cost = -35
        self.cost = -30
        self.sell_cost_label = self.facing == 'back' and '?' or self.sell_cost
        return
    end

    local ret = { raw_Card_set_cost(self, ...) }

    if self.config.center.set == 'Joker' and next(SMODS.find_card 'j_biasedBalance_death_and_taxes') then
        self.sell_cost = 0
        self.sell_cost_label = self.facing == 'back' and '?' or self.sell_cost
    end

    return unpack(ret)
end
