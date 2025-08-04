return {
    descriptions = {
        Back = {
            -- ||   TWEAKED BACKS    ||

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