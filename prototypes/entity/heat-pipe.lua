local tint = {r = 0.8, g = 0.4, b = 0.0, a = 0.5}

-- heat-pipe                                mk1                 mk2
-- max_health                               200                 300
-- heat_buffer.max_temperature              1000                2000
-- heat_buffer.max_transfer                 1GW                 8GW
-- heat_buffer.minimum_glow_temperature     350                 700

-- If someone has already set the fast_replaceable_group lets use it too
if not data.raw["heat-pipe"]["heat-pipe"].fast_replaceable_group then
    data.raw["heat-pipe"]["heat-pipe"].fast_replaceable_group = "heat-pipe"
end
data.raw["heat-pipe"]["heat-pipe"].next_upgrade = "heat-pipe-mk2"

local mk2 = table.deepcopy(data.raw["heat-pipe"]["heat-pipe"])
mk2.name = "heat-pipe-mk2"
mk2.icon = "__FactorioExtended-Plus-Power__/graphics/icons/" .. mk2.name .. ".png"
mk2.minable.result = mk2.name
mk2.max_health = 300
mk2.heat_buffer.max_temperature = 2000

for i = 1, 6 do
    mk2.heat_glow_sprites.corner_left_down[i].tint = tint
    mk2.heat_glow_sprites.corner_left_down[i].tint = tint
    mk2.heat_glow_sprites.corner_left_up[i].tint = tint
    mk2.heat_glow_sprites.corner_left_up[i].hr_version.tint = tint
    mk2.heat_glow_sprites.corner_right_down[i].tint = tint
    mk2.heat_glow_sprites.corner_right_down[i].hr_version.tint = tint
    mk2.heat_glow_sprites.corner_right_up[i].tint = tint
    mk2.heat_glow_sprites.corner_right_up[i].hr_version.tint = tint
end

mk2.heat_glow_sprites.cross[1].tint = tint
mk2.heat_glow_sprites.cross[1].hr_version.tint = tint

mk2.heat_glow_sprites.ending_down[1].tint = tint
mk2.heat_glow_sprites.ending_down[1].hr_version.tint = tint
mk2.heat_glow_sprites.ending_left[1].tint = tint
mk2.heat_glow_sprites.ending_left[1].hr_version.tint = tint
mk2.heat_glow_sprites.ending_right[1].tint = tint
mk2.heat_glow_sprites.ending_right[1].hr_version.tint = tint
mk2.heat_glow_sprites.ending_up[1].tint = tint
mk2.heat_glow_sprites.ending_up[1].hr_version.tint = tint

for i = 1, 6 do
    mk2.heat_glow_sprites.straight_horizontal[i].tint = tint
    mk2.heat_glow_sprites.straight_horizontal[i].hr_version.tint = tint
    mk2.heat_glow_sprites.straight_vertical[i].tint = tint
    mk2.heat_glow_sprites.straight_vertical[i].hr_version.tint = tint
end

mk2.heat_glow_sprites.t_down[1].tint = tint
mk2.heat_glow_sprites.t_down[1].hr_version.tint = tint
mk2.heat_glow_sprites.t_left[1].tint = tint
mk2.heat_glow_sprites.t_left[1].hr_version.tint = tint
mk2.heat_glow_sprites.t_right[1].tint = tint
mk2.heat_glow_sprites.t_right[1].hr_version.tint = tint
mk2.heat_glow_sprites.t_up[1].tint = tint
mk2.heat_glow_sprites.t_up[1].hr_version.tint = tint

for i = 1, 6 do
    mk2.connection_sprites.corner_left_down[i].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/heat-pipe-corner-down-left-" .. i .. ".png"
    mk2.connection_sprites.corner_left_down[i].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-heat-pipe-corner-down-left-" .. i .. ".png"
    mk2.connection_sprites.corner_left_up[i].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/heat-pipe-corner-up-left-" .. i .. ".png"
    mk2.connection_sprites.corner_left_up[i].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-heat-pipe-corner-up-left-" .. i .. ".png"
    mk2.connection_sprites.corner_right_down[i].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/heat-pipe-corner-down-right-" .. i .. ".png"
    mk2.connection_sprites.corner_right_down[i].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-heat-pipe-corner-down-right-" .. i .. ".png"
    mk2.connection_sprites.corner_right_up[i].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/heat-pipe-corner-up-right-" .. i .. ".png"
    mk2.connection_sprites.corner_right_up[i].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-heat-pipe-corner-up-right-" .. i .. ".png"
end

mk2.connection_sprites.cross[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/heat-pipe-t-1.png"
mk2.connection_sprites.cross[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-heat-pipe-t-1.png"

mk2.connection_sprites.ending_down[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/heat-pipe-ending-down-1.png"
mk2.connection_sprites.ending_down[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-heat-pipe-ending-down-1.png"
mk2.connection_sprites.ending_left[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/heat-pipe-ending-left-1.png"
mk2.connection_sprites.ending_left[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-heat-pipe-ending-left-1.png"
mk2.connection_sprites.ending_right[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/heat-pipe-ending-right-1.png"
mk2.connection_sprites.ending_right[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-heat-pipe-ending-right-1.png"
mk2.connection_sprites.ending_up[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/heat-pipe-ending-up-1.png"
mk2.connection_sprites.ending_up[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-heat-pipe-ending-up-1.png"

mk2.connection_sprites.single[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/heat-pipe-straight-vertical-single.png"
mk2.connection_sprites.single[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-heat-pipe-straight-vertical-single.png"

for i = 1, 6 do
    mk2.connection_sprites.straight_horizontal[i].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/heat-pipe-straight-horizontal-" .. i .. ".png"
    mk2.connection_sprites.straight_horizontal[i].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-heat-pipe-straight-horizontal-" .. i .. ".png"
    mk2.connection_sprites.straight_vertical[i].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/heat-pipe-straight-vertical-" .. i .. ".png"
    mk2.connection_sprites.straight_vertical[i].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-heat-pipe-straight-vertical-" .. i .. ".png"
end

mk2.connection_sprites.t_down[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/heat-pipe-t-down-1.png"
mk2.connection_sprites.t_down[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-heat-pipe-t-down-1.png"
mk2.connection_sprites.t_left[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/heat-pipe-t-left-1.png"
mk2.connection_sprites.t_left[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-heat-pipe-t-left-1.png"
mk2.connection_sprites.t_right[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/heat-pipe-t-right-1.png"
mk2.connection_sprites.t_right[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-heat-pipe-t-right-1.png"
mk2.connection_sprites.t_up[1].filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/heat-pipe-t-up-1.png"
mk2.connection_sprites.t_up[1].hr_version.filename = "__FactorioExtended-Plus-Power__/graphics/entity/" .. mk2.name .. "/hr-heat-pipe-t-up-1.png"

data:extend({mk2})
