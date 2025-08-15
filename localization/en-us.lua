return {
    descriptions = {
        Back = {
            -- ||   TWEAKED BACKS    ||
            b_black = {
                text = { "{C:attention}+#1#{} Joker slot",
                    "",
                    "{C:blue}-#2#{} hand",
                    "every round",
                    "",
                    "{C:dark_edition}Negative{} is",
                    "{X:mult,C:white}4X{} more common" }
            },
            b_ghost = {
                text = {
                    "{C:spectral}Spectral{} cards may",
                    "appear in the shop,",
                    "start with a {C:spectral,T:c_hex}Hex{} card,",
                    "{C:spectral}Spectral Packs{} are",
                    "{X:mult,C:white}3X{} more common"
                }
            },
            b_yellow={
                name="Yellow Deck",
                text={
                    "Start with",
                    "extra {C:money}$#1#",
                },
            },
            -- ||   ADDED BACKS    ||
            b_biasedBalance_Purple = {
                name = "Purple Deck",
                text = {
                    "{X:mult,C:white}X#1#{} Mult",
                    "No repeat hand types",
                }
            },
            b_biasedBalance_Teal = {
                name = "Teal Deck",
                text = {
                    "Whenever you leave shop",
                    "Create a random {C:tarot}Tarot{} card"
                }
            },
            b_biasedBalance_White = {
                name = "White Deck",
                text = {
                    "At the start of each round",
                    "Create a {C:blue}Common{C:attention} Joker",
                    "{C:inactive}(Must have room)",
                }
            },
        },
        Joker = {
        -- ||   TWEAKED JOKERS    ||
            -- Common 
            j_flash={
                name = "Flash Card",
                text = {
                    "This Joker gains {C:mult}+#1#{} Mult",
                    "per {C:attention}reroll{} in the shop",
                    "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)",
                },
            },
            j_scary_face = {
                text = {
                    "Played {C:attention}face{} cards",
                    "give {C:chips}+#1#{} Chips",
                    "and {C:mult}+#2#{} Mult",
                    "when scored",
                }
            },
            -- Uncommon
            j_delayed_grat = {
                name = "Reduced Gratification",
                text = {
                    "Earn {C:money}$#1#{} when",
                    "{C:red}discarding {C:attention}#2#",
                    "or fewer cards"
                }
            },
            j_flower_pot = {
                text = {
                    "{X:mult,C:white}X#1#{} Mult if played",
                    "hand contains a",
                    "{C:diamonds}Diamond{} card, {C:clubs}Club{} card,",
                    "{C:hearts}Heart{} card, and {C:spades}Spade{} card",
                }
            },
            j_hack = {
                name = "Hack",
                text = { 
                    "Retrigger",
                    "each played",
                    "{C:attention}2{}, {C:attention}3{}, {C:attention}4{}",
                    "{C:attention}5{}, or {C:attention}6{}",
                 }
            },
            j_glass = {
                text = {
                    "{X:mult,C:white}X#1#{} Mult for every",
                    "{C:attention}Glass Card{} destroyed this run",
                    "{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)",
                }
            },
            j_red_card = {
                text = {
                    "This Joker gains",
                    "{X:mult,C:white}X#1#{} Mult when any",
                    "{C:attention}Booster Pack{} is opened",
                    "{C:inactive}(Currently {X:mult,C:white}X#2#{C:inactive} Mult)",
                }
            },
            j_rough_gem = {
                text = {
                    "Played cards with",
                    "{C:diamonds}Diamond{} suit have",
                    "{C:green}#1# in #2#{} chance to",
                    "earn {C:money}$#3#{} when scored",
                }
            },
            j_seance = {
                text = {
                    "Replace a random held",
                    "{C:tarot}Tarot{} card with",
                    "a {C:spectral}Spectral{} card",
                    "at end of round"
                }
            },
            j_todo_list = {
                text = {
                    "Gains {X:mult,C:white}X#1#{} Mult the first time",
                    "{C:attention}poker hand{} is a {C:attention}#2#{} this round,",
                    "poker hand changes at end of round",
                    "{C:inactive}(Currently {X:mult,C:white}X#3#{C:inactive} Mult)"
                }
            },
            j_troubadour = {
                text = {
                    "{C:attention}+#1#{} hand size,",
                    "discard at most {C:attention}#2#{}",
                    "cards at once"
                },
            },
            j_trousers = {
                text = {
                    "This Jokers gains and gives",
                    "{C:mult}+#1#{} Mult and {C:chips}+#2#{} Chips",
                    "if played hand contains",
                    "a {C:attention}#3#",
                    "{C:inactive}(Currently {C:red}+#4#{C:inactive} Mult and {C:chips}+#5#{C:inactive} Chips)",
                },
            },
            
        -- Rare

        -- Legendary
    -- ||   ADDED JOKERS    ||
        -- Common
            j_biasedBalance_alchemist= {
                name = "Alchemist",
                text = { 
                    "At start of each round",
                    "{C:chips}+#1#{} Hand",
                    "{C:mult}-#2#{} Discard"
                }
            },
            j_biasedBalance_ballerina= {
                name = "Ballerina",
                text = { 
                    "Play 3 different scoring hands",
                    "consecutively and level up",
                    "one random hand, create a random",
                    "{C:tarot}Tarot card{} and gain {C:gold}$#1#"
                }
            },
            j_biasedBalance_eldritch_joker= {
                name = "Eldritch Joker",
                text = { 
                    "This {C:attention}Joker{} gains",
                    "{X:mult,C:white}X#1#{} Mult after every",
                    "card scored in played hands",
                    "Currently: {X:mult,C:white}X#2#{} Mult"
                }
            },
            j_biasedBalance_everhungry_joker = {
                name = "Everhungry Joker",
                text = { 
                    "This {C:attention}Joker{} gains",
                    "{C:mult}+#1#{} Mult if any",
                    "consumable is used",
                    "Currently: {C:mult}+#2#{} Mult"
                }
            },
            j_biasedBalance_my_green_joker={
                name="Green Joker",
                text={
                   "{C:mult}+#1#{} Mult per scoring hands with {C:attention}+4",
                   "{C:mult}-#1#{} Mult if it does not",
                  "{C:inactive}(Currently {C:mult}+#2#{C:inactive} Mult)",
                },
            },
             j_biasedBalance_my_ride_the_bus={
                name = "Ride the Bus",
                text = {
                    "This Joker gains {C:mult}+#1#{} Mult",
                    "played without a",
                    "scoring {C:attention}Face{} card",
                    "{C:mult}-#2#{} Mult if it does",
                    "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult)",
                },
            },
            j_biasedBalance_mystery_box = {
                name = "Mystery Box",
                text = { 
                    "When a {C:attention}Blind{} is skipped",
                    "Destroy this {C:attention}Joker{} and",
                    "create a random {C:attention}Rare Joker",
                    "and {C:tarot}2 Tarot cards"
                }
            }, j_biasedBalance_kestrel = {
                name = "Kestrel",
                text = { 
                    "{C:mult}+#1#{} Mult for every",
                    "enhanced cards in deck",
                    "Currently: {C:mult}+#2#{} Mult"
                }
            },
            j_biasedBalance_monument = {
                name = "Monument",
                text = {
                    "This {C:attention}Joker{} gains {C:mult}+#1#{} Mult",
                    "If scoring hand contains a {C:attention}Face{} card",
                    "Currently: {C:mult}+#2#{} Mult"
                }
            },
            j_biasedBalance_practical_perfectionist = {
                name = "Practical Perfectionist",
                text = { 
                    "Any scoring hands with",
                    "{C:attention}+5{} scored cards",
                    "earn {C:gold}$#1#{}"
                }
            },
            j_biasedBalance_pitiful_joker = {
                name = "Pitiful Joker",
                text = {
                    "{C:red}+#1#{} Mult",
                    "if hand is played",
                    "with {C:money}$#2#{} or less",
                }
            },
            j_biasedBalance_terrace_garden = {
                name = "Terrace",
                text = { "Earn {C:money}$#1#{} per Joker", "at end of round", "{C:inactive}(Will give {C:money}$#2#{C:inactive})" }
            },
            j_biasedBalance_jumbo = {
                name = "Jumbo",
                text = {
                    "{C:mult}+#1#{} Mult,",
                    "{C:dark_edition}-#2#{} Joker slot"
                }
            },
            j_biasedBalance_wallpaper = {
                name = "Wallpaper",
                text = { 
                    "{C:white,X:mult}X#1#{} Mult if all", 
                    "cards held in hand", 
                    "are {C:attention}2{} suits only"
                }
            },
            j_biasedBalance_wisteria_joker = {
                name = "Wisteria Joker",
                text = { 
                    "This {C:attention}Joker{} gains",
                    "{C:chips}+#1#{} Chips if any scoring",
                    "hands with {C:attention}+5{} cards",
                    "or {C:chips}-#2#{} chips if not",
                    "Currently: {C:chips}+#3#{} Chips"
                }
            },
        -- Uncommon
            j_biasedBalance_anchor = {
                name = "The Anchor",
                text = {
                    "{X:mult,C:white}X#1#{} Mult if current",
                    "score has {C:chips}#2#{} Chips or more"
                }
            },
            j_biasedBalance_alien_joker = {
                name = "Alien Joker",
                text = {
                    "{X:mult,C:white}X#1#{} Mult per Poker Hand",
                    "leveled {C:attention}#2#{} or higher",
                    "{C:inactive}Currently {X:mult,C:white}X#3#{C:inactive} Mult)"
                }
            },
            j_biasedBalance_cinemaphile = {
                name = "Cinemaphile",
                text = { "Sell this card to",
                    "add a {C:attention}Voucher{} to the shop", }
            },
            j_biasedBalance_free_lunch = {
                name = '"Free" Lunch',
                text = {
                    "Costs {C:money}-$#1#",
                    "Sells for {C:money}-$#2#"
                }
            },
            j_biasedBalance_leprechaun = {
                name = 'Leprechaun',
                text = {
                    "{X:mult,C:white}X#1#{} Mult if you",
                    "have {C:money}$#2#{} or more"
                }
            },
            j_biasedBalance_osmosis = {
                name = 'Osmosis',
                text = {
                    "{C:mult}+#1#{} Mult per card above",
                    "{C:attention}#2#{} in your full deck",
                    "{C:inactive}(Currently {C:mult}+#3#{C:inactive} Mult)"
                }
            },
            j_biasedBalance_red_sun = {
                name = "Red Sun",
                text = { 
                    "{X:mult,C:white}X#1#{} Mult if played hand",
                    "contains both a {C:diamonds}Diamond{} and {C:hearts}Heart", 
                    "card and no other suits" 
                }
            },
            j_biasedBalance_spooky = {
                name = "Spooky Joker",
                text = {
                    "{C:green}#1# in #2#{} chance to",
                    "add a random {C:dark_edition}edition{}",
                    "to a random played card"
                }
            },
            j_biasedBalance_snob = {
                name = "Snob",
                text = {
                    "{X:mult,C:white}X#1#{} Mult,",
                    "{X:mult,C:white}-X#2#{} Mult per {C:attention}2{}, {C:attention}3{}, {C:attention}4{},",
                    "{C:attention}5{}, and {C:attention}6{} in your full deck",
                    "{C:inactive}Currently {X:mult,C:white}X#3#{C:inactive} Mult)"
                }
            },
            j_biasedBalance_trinity = {
                name = "Trinity",
                text = { 
                    "{X:mult,C:white}X#1#{} Mult if played hand", 
                    "contains at least {C:attention}#2#{} suits" 
                }
            },
            j_biasedBalance_white_hole = {
                name = "White Hole",
                text = { 
                    "After {C:attention}#1#{} rounds,",
                    "sell this card to",
                    "{C:planet}level up{} every {C:attention}Poker Hand",
                    "{C:inactive}(Currently {C:attention}#2#{C:inactive}/#1#)", 
                }
            },
        -- Rare
            j_biasedBalance_rivals = {
                name = "The Rivals",
                text = {
                    "{X:mult,C:white}X#1#{} Mult if played",
                    "hand contains",
                    "a {C:attention}#2#",
                }
            },
            j_biasedBalance_blunted_impact = {
                name = "Blunted Impact",
                text = {
                    "{X:mult,C:white}X#1#{} Mult if played hand",
                    "is different from the",
                    "previous this {C:attention}round",
                    "{C:inactive}(Currently {C:attention}#2#{C:inactive})"
                }
            },
            j_biasedBalance_bookworm = {
                name = "Bookworm",
                text = {
                    "{C:chips}+#1#{} Chips if played",
                    "{C:attention}poker hand{} is {C:red}not",
                    "your most played"
                }
            },
            j_biasedBalance_brash_gambler = {
                name = "Brash Gambler",
                text = {
                    "{C:green}#1# in #2#{} chance for {X:mult,C:white}X#3#{} Mult,",
                    "{C:green}#1# in #4#{} chance for {X:mult,C:white}X#5#{} Mult",
                }
            },
            j_biasedBalance_court = {
                name = "The Court",
                text = {
                    "{X:mult,C:white}X#1#{} Mult if played hand",
                    "only contains {C:attention}Face Cards"
                }
            },
            j_biasedBalance_death_and_taxes = {
                name = "Death and Taxes",
                text = {
                    "{X:mult,C:white}X#1#{} Mult if a Joker",
                    "was sold this round,",
                    "Jokers sell for {C:money}$0"
                }
            },
            j_biasedBalance_flavourful_joker = {
                name = "Flavourful Joker",
                text = {
                    "{C:chips}+#1#{} Chips per Joker",
                    "with an {C:dark_edition}Edition"
                }
            },
            j_biasedBalance_parvenu = {
                name = "The Parvenu",
                text = {
                    "{X:mult,C:white}X#1#{} Mult if played hand",
                    "contains {C:red}no{} {C:attention}Face Cards"
                }
            },
            j_biasedBalance_skipper = {
                name = "Skipper",
                text = {
                    "{X:mult,C:white}X#1#{} Mult if a Blind",
                    "was {C:attention}skipped{} this {C:attention}round"
                }
            },
            j_biasedBalance_minstrel = {
                name = "Minstrel",
                text = {
                    "{C:attention}+#1#{} discards,",
                    "discard at most {C:attention}#2#{}",
                    "cards at once"
                }
            },
        -- Legendary
        },
        Other = {
        -- ||   ADDED BOOSTERS   ||
            p_biasedBalance_Sacrifice = {
                name = 'Sacrifice Pack',
                text = {
                    "Choose {C:attention}#1#{} cards,",
                    "{C:red}destroy{} the left {C:attention}#2#{},",
                    "give the rest a random {C:dark_edition}edition"
                }
            },
            p_biasedBalance_GigaStandard = {
                name = 'Giga Standard Pack',
                text = {
                    "Choose {C:attention}#1#{} of up to",
                    "{C:attention}#2# Playing{} cards to",
                    "add to your deck",
                }
            },
        },
        Spectral = {
        -- ||   TWEAKED SPECTRALS    ||
            c_ankh = {
                text = {
                    "Create a copy of",
                    "leftmost {C:attention}Joker{}, destroy",
                    "all other Jokers",
                }
            },
            c_aura = {
                text = {
                    "Add {C:dark_edition}Foil{}, {C:dark_edition}Holographic{},",
                    "or {C:dark_edition}Polychrome{}, or {C:dark_edition}Negative",
                    "to {C:attention}1{} selected card in hand",
                }
            },
        c_familiar = {
                text = {
                    "Destroy {C:attention}#1#{} selected",
                    "card in your hand, add",
                    "{C:attention}#2#{} random {C:attention}Enhanced face",
                    "{C:attention}cards{} to your hand",
                }
            },
        c_immolate = {
                text = {
                    "Destroys up to",
                    "{C:attention}#1#{} selected cards",
                }
            },
        c_ouija = {
                text = {
                    "Select {C:attention}#1#{} cards,",
                    "convert the {C:attention}left #2#",
                    "into the {C:attention}rightmost{} card,",
                    "lose up to {C:money}$#3#",
                    "{C:inactive}(Drag to rearrange)",
                },
            },
        c_sigil = {
                text = {
                    "Converts all cards in",
                    "hand to {C:attention}selected suit,",
                    "lose up to {C:money}$#1#",
                },
            },    
        c_wraith = {
            text = {
                "Creates a random",
                "{C:red}Rare{C:attention} Joker{},",
                "lose up to {C:money}$#1#",
                },
            },
        -- ||   ADDED SPECTRALS    ||

        },
        Stake = {
            stake_blue = {
                text = {
                    "Reroll costs scale {C:money}$1{} faster",
                    "{s:0.8}Applies all previous Stakes",
                },
            },
        },
        Tarot = {
            c_lovers = {
                text = {
                    "Enhances {C:attention}#1#{} selected",
                    "cards into a",
                    "{C:attention}#2#",
                },
            },
            c_strength = {
                text = {
                    "Increases rank of",
                    "up to {C:attention}3{} selected",
                    "cards by {C:attention}1",
                }
            },
        },
        Tag = {
            tag_meteor = {
                text = { 
                    "{C:planet}Upgrades{} all", 
                    "{C:attention}Poker Hands{} once" 
                }
            },
            tag_boss = {
                text = { 
                    "Disables effect of", 
                    "next {C:attention}Boss Blind", 
                    "{s:0.8,C:inactive}(Can't be copied)" 
            }
            },
            tag_juggle = {
                text = { 
                    "{C:attention}+#1#{} hand size for", 
                    "the next {C:attention}#2#{} rounds" 
                }
            },
            tag_garbage = {
                text = { 
                    "{C:red}+#1#{} discards for", 
                    "the next {C:attention}#2#{} rounds" 
                }
            },
            tag_economy = {
                text = { 
                    "Doubles your money", 
                    "{C:inactive}(Max of {C:money}$#1#{C:inactive},", 
                    "{C:inactive}Min of {C:money}$#2#{C:inactive})", 
                }
            },
            tag_standard = {
                text = {
                    "Gives a free",
                    "{C:attention}Giga Standard Pack",
                }
            },
        },
        Voucher = {
             v_omen_globe = {
                text = {
                    "{C:spectral}Spectral{} cards may",
                    "appear in any of",
                    "the {C:tarot}Arcana{} or {C:planet}Celestial{} Packs",
                },
            },
            v_illusion = {
                text = {
                    "{C:attention}Playing cards{} in shop",
                    "always have an {C:enhanced}Enhancement{},",
                    "{C:dark_edition}Edition{}, and/or a {C:attention}Seal{}",
                }
            },
            v_hone = {
                text = {
                    "{C:dark_edition}Editioned{} cards",
                    "appear {C:attention}#1#X{} more often",
                }
            },
            v_glow_up = {
                text = {
                    "{C:dark_edition}Editioned{} cards",
                    "appear {C:attention}#1#X{} more often",
                }
            },
            v_planet_merchant={
                name="Planet Merchant",
                text={
                    "{C:planet}Planet{} cards appear",
                    "{C:attention}#1#X{} more frequently",
                    "in the shop",
                },
            },
        },
    },
    misc = {
        dictionary = {
            k_booster_group_p_biasedBalance_Utility = 'Utility Pack',
            k_booster_group_p_biasedBalance_Sacrifice = 'Sacrifice',
            k_booster_group_p_biasedBalance_GigaStandard = 'Giga Standard Pack',
            k_booster_group_p_biasedBalance_LowStickerBuffoon = 'Mega Buffoon Pack',
            k_biasedBalance_noRepeats = 'No repeat hand types',
        },
        text = {
            biasedBalance_none = "None"
        },
        labels={
            biasedBalance_Teal_seal = "Teal Seal",
        }
    }
}