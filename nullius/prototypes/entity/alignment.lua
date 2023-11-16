if (settings.startup["nullius-alignment"].value) then


local turret = util.table.deepcopy(data.raw["ammo-turret"]["gun-turret"])
turret.name = "nullius-align-conscription-turret"
turret.icons = data.raw.item["nullius-align-conscription-turret"].icons
turret.minable.result = "nullius-align-conscription-turret"
turret.minable.max_health = 1000
turret.resistances = {
  { type = "impact", decrease = 10, percent = 50 },
  { type = "laser", decrease = 5, percent = 25 },
  { type = "explosion", decrease = 5, percent = 25 },
  { type = "physical", decrease = 2, percent = 10 }
}
turret.attack_parameters.ammo_category = "nullius-conscription"
turret.attack_parameters.range = 32


local radar = util.table.deepcopy(data.raw["radar"]["radar"])
radar.name = "nullius-align-concordance-transmitter"
radar.icons = data.raw.item["nullius-align-concordance-transmitter"].icons
radar.integration_patch = scale_image(radar.integration_patch, 2)
radar.pictures = scale_image(radar.pictures, 2)
radar.water_reflection = scale_image(radar.water_reflection, 2)
radar.pictures.layers[1].tint = {0.6, 0.7, 1}
radar.pictures.layers[1].hr_version.tint = {0.6, 0.7, 1}
radar.minable.mining_time = 1
radar.minable.result = "nullius-align-concordance-transmitter"
radar.max_health = 600
radar.collision_box = {{-2.7, -2.7}, {2.7, 2.7}}
radar.selection_box = {{-3, -3}, {3, 3}}
radar.energy_per_nearby_scan = "5MJ"
radar.energy_per_sector = "50MJ"
radar.energy_usage = "10MW"
radar.energy_source.buffer_capacity = "100MJ"
radar.energy_source.input_flow_limit = "20MW"
radar.energy_source.output_flow_limit = "0kW"
radar.max_distance_of_nearby_sector_revealed = 1
radar.max_distance_of_sector_revealed = 128


data:extend({
  turret,
  radar,

  {
    type = "projectile",
    name = "nullius-align-identification-card",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action = {
      {
        type = "area",
        radius = 2,
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "script",
              effect_id = "nullius-align-identification-card"
            }
          }
        }
      }
    },
    light = {intensity = 0.4, size = 3},
    animation = {
	  filename = "__nullius__/graphics/icons/card1.png",
      width = 128,
	  height = 128,
	  scale = 0.4,
      draw_as_glow = true,
      frame_count = 1,
      priority = "high"
    }
  },
  {
    type = "projectile",
    name = "nullius-align-invitation-card",
    flags = {"not-on-map"},
    acceleration = 0.005,
    action = {
      {
        type = "area",
        radius = 2,
        action_delivery = {
          type = "instant",
          target_effects = {
            {
              type = "script",
              effect_id = "nullius-align-invitation-card"
            }
          }
        }
      }
    },
    light = {intensity = 0.4, size = 3},
    animation = {
	  filename = "__nullius__/graphics/icons/card2.png",
      width = 128,
	  height = 128,
	  scale = 0.4,
      draw_as_glow = true,
      frame_count = 1,
      priority = "high"
    }
  },
  {
    type = "projectile",
    name = "nullius-align-conscription-charge",
    flags = {"not-on-map"},
    acceleration = 0.1,
    action = {
      {
        type = "area",
        radius = 1,
        action_delivery = {
          type = "instant",
          target_effects = {
	        {
              type = "script",
              effect_id = "nullius-align-conscription-ray"
            },
			{
              type = "create-explosion",
			  entity_name = "spark-explosion"
            },
            {
              type = "damage",
              damage = {amount = 20, type = "electric"}
            }
          }
        }
      }
    },
    light = {intensity = 0.5, size = 6},
    animation = {
      filename = "__base__/graphics/entity/laser/laser-to-tint-medium.png",
      draw_as_glow = true,
      tint = {r=0.0, g=0.2, b=1.0},
      frame_count = 1,
      width = 12,
      height = 33,
      priority = "high",
      blend_mode = "additive"
    }
  },

  {
    type = "tile",
    name = "nullius-stars",
    collision_mask = {"ground-tile"},
    layer = 234,
    map_color={r=8, g=8, b=32},
    walking_speed_modifier = 0.2,
    pollution_absorption_per_second = 0,
    variants = {
      main = {
	    {
          picture = "__nullius__/graphics/entity/landfill/space.png",
          count = 1,
          size = 16,
		  scale = 0.5
        },
        {
          picture = "__nullius__/graphics/entity/landfill/space.png",
          count = 1,
          size = 1,
		  scale = 0.5
        }
      },
      empty_transitions = true
    }
  }
})

end
