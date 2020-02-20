-- boiler                                   mk1         mk2         mk3
-- max_health                               200         400         600
-- energy_consumption                       1.8MW       3.6MW       7.2MW
-- energy_source.emissions_per_minute       30          25          20

-- heat-exchanger                           mk1         mk2         mk3
-- max_health                               200         400         600
-- min_working_temperature                  500         500         500  -- 100 appears to be the max
-- minimum_glow_temperature                 350         450         550
-- energy_consumption                       10MW        20MW        30MW
-- target_temperature                       500         600         700  -- 100 appears to be the max

-- If someone has already set the fast_replaceable_group lets use it too
if not data.raw["boiler"]["heat-exchanger"].fast_replaceable_group then
    data.raw["boiler"]["heat-exchanger"].fast_replaceable_group = "heat-exchanger"
end
data.raw["boiler"]["heat-exchanger"].next_upgrade = "heat-exchanger-mk2"

local mk2 = table.deepcopy(data.raw["boiler"]["heat-exchanger"])
mk2.name = "heat-exchanger-mk2"
mk2.icon = "__FactorioExtended-Plus-Power__/graphics/icons/" .. mk2.name .. ".png"
mk2.minable.result = mk2.name
mk2.max_health = 400
mk2.min_working_temperature = 500
mk2.minimum_glow_temperature = 450
mk2.energy_consumption = "20MW"
mk2.target_temperature = 600
mk2.next_upgrade = "heat-exchanger-mk3"

mk2.structure.east.layers[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/heatex-E-idle.png"
mk2.structure.east.layers[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-heatex-E-idle.png"
mk2.structure.north.layers[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/heatex-N-idle.png"
mk2.structure.north.layers[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-heatex-N-idle.png"
mk2.structure.south.layers[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/heatex-S-idle.png"
mk2.structure.south.layers[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-heatex-S-idle.png"
mk2.structure.west.layers[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/heatex-W-idle.png"
mk2.structure.west.layers[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-heatex-W-idle.png"

local mk3 = table.deepcopy(data.raw["boiler"]["heat-exchanger"])
mk3.name = "heat-exchanger-mk3"
mk3.icon = "__FactorioExtended-Plus-Power__/graphics/icons/" .. mk3.name .. ".png"
mk3.minable.result = mk3.name
mk3.max_health = 600
mk3.min_working_temperature = 500
mk3.minimum_glow_temperature = 550
mk3.energy_consumption = "40MW"
mk3.target_temperature = 700
mk3.next_upgrade = nil

mk3.structure.east.layers[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk3.name .. "/heatex-E-idle.png"
mk3.structure.east.layers[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk3.name .. "/hr-heatex-E-idle.png"
mk3.structure.north.layers[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk3.name .. "/heatex-N-idle.png"
mk3.structure.north.layers[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk3.name .. "/hr-heatex-N-idle.png"
mk3.structure.south.layers[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk3.name .. "/heatex-S-idle.png"
mk3.structure.south.layers[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk3.name .. "/hr-heatex-S-idle.png"
mk3.structure.west.layers[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk3.name .. "/heatex-W-idle.png"
mk3.structure.west.layers[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk3.name .. "/hr-heatex-W-idle.png"

data:extend({mk2, mk3})
