data:extend(
    {
        {
            type = "recipe",
            name = "heat-exchanger-mk2",
            energy_required = 6,
            enabled = "false",
            ingredients = {
                {"titanium-alloy", 100},
                {"advanced-circuit", 10},
                {"heat-exchanger", 2},
                {"pipe-mk2", 10}
            },
            requester_paste_multiplier = 1,
            result = "heat-exchanger-mk2"
        },
        {
            type = "recipe",
            name = "heat-exchanger-mk3",
            energy_required = 12,
            enabled = "false",
            ingredients = {
                {"titanium-alloy", 200},
                {"processing-unit", 10},
                {"heat-exchanger-mk2", 2},
                {"pipe-mk2", 25}
            },
            requester_paste_multiplier = 1,
            result = "heat-exchanger-mk3"
        }
    }
)
