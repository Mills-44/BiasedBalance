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