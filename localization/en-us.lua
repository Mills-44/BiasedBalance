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
        },
        Spectral = {
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