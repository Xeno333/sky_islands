core.register_mapgen_script(core.get_modpath("sky_islands") .. "/mapgen.lua")

local v = vector.new(1, 1, 1)

core.register_on_generated(function(minp, maxp, _)
    core.fix_light(minp - v, maxp + v)
end)