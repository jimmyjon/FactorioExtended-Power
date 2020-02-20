data:extend(
    {
        {
            type = "technology",
            name = "solar-energy-2",
            icon_size = 128,
            icon = "__base__/graphics/technology/solar-energy.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "solar-panel-mk2"
                }
            },
            prerequisites = {"solar-energy", "advanced-electronics", "titanium-processing"},
            unit = {
                count = 350,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1}
                },
                time = 30
            },
            order = "a-h-d"
        },
        {
            type = "technology",
            name = "solar-energy-3",
            icon_size = 128,
            icon = "__base__/graphics/technology/solar-energy.png",
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "solar-panel-mk3"
                }
            },
            prerequisites = {"solar-energy-2", "advanced-electronics-2"},
            unit = {
                count = 350,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"utility-science-pack", 1}
                },
                time = 30
            },
            order = "a-h-e"
        },
        {
            type = "technology",
            name = "electric-energy-accumulators-2",
            icon_size = 128,
            icon = "__base__/graphics/technology/electric-energy-acumulators.png",
            localised_name = {"technology-name.electric-energy-accumulators-2"},
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "accumulator-mk2"
                }
            },
            prerequisites = {"electric-energy-accumulators", "titanium-processing"},
            unit = {
                count = 250,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1}
                },
                time = 30
            },
            order = "c-e-b"
        },
        {
            type = "technology",
            name = "electric-energy-accumulators-3",
            icon_size = 128,
            icon = "__base__/graphics/technology/electric-energy-acumulators.png",
            localised_name = {"technology-name.electric-energy-accumulators-3"},
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "accumulator-mk3"
                }
            },
            prerequisites = {"electric-energy-accumulators-2"},
            unit = {
                count = 350,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1}
                },
                time = 30
            },
            order = "c-e-c"
        },
        {
            type = "technology",
            name = "electrical-engineer",
            icon = "__FactorioExtended-Plus-Power__/graphics/technology/electrical-engineer.png",
            icon_size = 128,
            prerequisites = {"solar-energy", "electric-energy-accumulators", "electric-energy-distribution-2", "titanium-processing"},
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "substation-mk2"
                },
                {
                    type = "unlock-recipe",
                    recipe = "big-electric-pole-mk2"
                },
                {
                    type = "unlock-recipe",
                    recipe = "medium-electric-pole-mk2"
                },
                {
                    type = "unlock-recipe",
                    recipe = "steam-engine-mk2"
                },
                {
                    type = "unlock-recipe",
                    recipe = "boiler-mk2"
                }
            },
            unit = {
                count = 300,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1}
                },
                time = 30
            },
            order = "f-b-b-a"
        },
        {
            type = "technology",
            name = "electrical-engineer-2",
            icon = "__FactorioExtended-Plus-Power__/graphics/technology/electrical-engineer.png",
            icon_size = 128,
            prerequisites = {"electrical-engineer"},
            effects = {
                {
                    type = "unlock-recipe",
                    recipe = "substation-mk3"
                },
                {
                    type = "unlock-recipe",
                    recipe = "big-electric-pole-mk3"
                },
                {
                    type = "unlock-recipe",
                    recipe = "medium-electric-pole-mk3"
                },
                {
                    type = "unlock-recipe",
                    recipe = "steam-engine-mk3"
                },
                {
                    type = "unlock-recipe",
                    recipe = "boiler-mk3"
                }
            },
            unit = {
                count = 400,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1}
                },
                time = 60
            },
            order = "f-b-b-b"
        },
        {
            effects = {
                {recipe = "nuclear-reactor-mk2", type = "unlock-recipe"},
                {recipe = "heat-exchanger-mk2", type = "unlock-recipe"},
                {recipe = "heat-pipe-mk2", type = "unlock-recipe"},
                {recipe = "steam-turbine-mk2", type = "unlock-recipe"}
            },
            icons = {{icon = "__base__/graphics/technology/nuclear-power.png", icon_size = 128, tint = {r = 0.4, g = 0.804, b = 0.667, a = 0.8}}},
            name = "nuclear-power-2",
            order = "e-p-b-c2",
            prerequisites = {
                "electrical-engineer",
                "nuclear-power"
            },
            type = "technology",
            unit = {
                count = 1600,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1}
                },
                time = 30
            }
        },
        {
            effects = {
                {recipe = "nuclear-reactor-mk3", type = "unlock-recipe"},
                {recipe = "heat-exchanger-mk3", type = "unlock-recipe"},
                {recipe = "steam-turbine-mk3", type = "unlock-recipe"}
            },
            icons = {{icon = "__base__/graphics/technology/nuclear-power.png", icon_size = 128, tint = {r = 0.5, g = 0.5, b = 0.9, a = 0.8}}},
            name = "nuclear-power-3",
            order = "e-p-b-c2",
            prerequisites = {
                "electrical-engineer-2",
                "nuclear-power-2"
            },
            type = "technology",
            unit = {
                count = 3200,
                ingredients = {
                    {"automation-science-pack", 1},
                    {"logistic-science-pack", 1},
                    {"chemical-science-pack", 1},
                    {"production-science-pack", 1},
                    {"utility-science-pack", 1}
                },
                time = 30
            }
        }
    }
)
