local sounds = require ("__base__/prototypes/entity/sounds")

if (settings.startup["nullius-alignment"].value) then

data:extend({
  {
    type = "capsule",
    name = "nullius-align-identification-card",
    icons = {{
      icon = "__nullius__/graphics/icons/card1.png",
      icon_size = 128
    }},
    subgroup = "alignment",
    order = "nullius-b",
    stack_size = 20,
    capsule_action = {
      type = "throw",
      attack_parameters = {
        type = "projectile",
        activation_type = "throw",
        ammo_category = "grenade",
        cooldown = 60,
        projectile_creation_distance = 0.5,
        range = 16,
        ammo_type = {
          category = "grenade",
          target_type = "position",
          action = {
            {
              type = "direct",
              action_delivery = {
                type = "projectile",
                projectile = "nullius-align-identification-card",
                starting_speed = 0.25
              }
            },
            {
              type = "direct",
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "play-sound",
                    sound = sounds.throw_projectile
                  }
                }
              }
            }
          }
        }
      }
    }
  },
  {
    type = "capsule",
    name = "nullius-align-invitation-card",
    icons = {{
      icon = "__nullius__/graphics/icons/card2.png",
      icon_size = 128
    }},
    subgroup = "alignment",
    order = "nullius-c",
    stack_size = 20,
    capsule_action = {
      type = "throw",
      attack_parameters = {
        type = "projectile",
        activation_type = "throw",
        ammo_category = "grenade",
        cooldown = 60,
        projectile_creation_distance = 0.25,
        range = 16,
        ammo_type = {
          category = "grenade",
          target_type = "position",
          action = {
            {
              type = "direct",
              action_delivery = {
                type = "projectile",
                projectile = "nullius-align-invitation-card",
                starting_speed = 0.3
              }
            },
            {
              type = "direct",
              action_delivery = {
                type = "instant",
                target_effects = {
                  {
                    type = "play-sound",
                    sound = sounds.throw_projectile
                  }
                }
              }
            }
          }
        }
      }
    }
  },
  {
    type = "capsule",
    name = "nullius-align-transponder",
	icons = {{
      icon = "__base__/graphics/icons/rocket-part.png",
      icon_size = 64,
	  icon_mipmaps = 4
    }},
    subgroup = "alignment",
    order = "nullius-db",
    stack_size = 20,
    capsule_action = {
      type = "use-on-self",
      attack_parameters = {
        type = "projectile",
        activation_type = "consume",
        ammo_category = "capsule",
        cooldown = 600,
        range = 0,
        ammo_type = {
          category = "capsule",
          target_type = "position",
          action = {
            type = "direct",
            action_delivery = {
              type = "instant",
              target_effects = {
                {
                  type = "camera-effect",
                  effect = "screen-burn",
                  duration = 20,
                  ease_in_duration = 10,
                  ease_out_duration = 10,
                  delay = 0,
                  strength = 2,
                  full_strength_max_distance = 500,
                  max_distance = 2000
                },
				{
                  type = "script",
				  effect_id = "nullius-align-transponder"
                }
              }
            }
          }
        }
      }
    }
  },
  {
    type = "ammo",
    name = "nullius-align-conscription-charge",
	icons = {{
      icon = "__base__/graphics/icons/piercing-shotgun-shell.png",
      icon_size = 64,
	  icon_mipmaps = 4
    }},
    subgroup = "alignment",
    order = "nullius-e",
    magazine_size = 100,
    stack_size = 20,
    ammo_type = {
      category = "nullius-conscription",
      target_type = "position",
      action = {
        {
          type = "direct",
          action_delivery = {
            type = "projectile",
            projectile = "nullius-align-conscription-charge",
            starting_speed = 0.6,
            source_effects = {
              type = "create-explosion",
			  entity_name = "spark-explosion"
            }
          }
        }
      }
    }
  },
  {
    type = "gun",
    name = "nullius-align-conscription-ray",
    icons = {{
      icon = "__base__/graphics/icons/combat-shotgun.png",
      icon_size = 64,
	  icon_mipmaps = 4
    }},
    subgroup = "alignment",
    order = "nullius-f",
    stack_size = 10,
    attack_parameters = {
      type = "projectile",
      ammo_category = "nullius-conscription",
      cooldown = 40,
      movement_slow_down_factor = 0.3,
      projectile_creation_distance = 1.125,
      range = 32,
	  sound = {
        filename = "__base__/sound/fight/laser-beam.ogg",
        volume = 0.75
      }
    }
  },
  {
    type = "item",
    name = "nullius-align-conscription-turret",
    icons = {{
      icon = "__base__/graphics/icons/gun-turret.png",
      icon_size = 64,
	  icon_mipmaps = 4
    }},
    subgroup = "alignment",
    order = "nullius-g",
    stack_size = 10,
	place_result = "nullius-align-conscription-turret"
  },
  {
    type = "item",
    name = "nullius-align-concordance-transmitter",
    icons = {{
      icon = "__nullius__/graphics/icons/transmitter.png",
      icon_size = 64
    }},
    subgroup = "alignment",
    order = "nullius-h",
    stack_size = 5,
	place_result = "nullius-align-concordance-transmitter"
  },
  {
    type = "item",
    name = "nullius-align-concordance-satellite",
    icons = {{
      icon = "__nullius__/graphics/icons/satellite.png",
      icon_size = 64
    }},
    subgroup = "alignment",
    order = "nullius-i",
    stack_size = 1,
    rocket_launch_product = {"nullius-astronomy-pack", 42}
  },

  {
    type = "item",
    name = "nullius-broken-align-transponder",
    localised_name = {"item-name.nullius-broken", {"item-name.nullius-align-transponder"}},
    icons = {
      {
	    icon = "__base__/graphics/icons/rocket-part.png",
        icon_size = 64,
	    icon_mipmaps = 4
      },
      {
        icon = "__nullius__/graphics/icons/broken.png",
        icon_size = 64
      }
    },
	subgroup = "alignment",
    order = "nullius-dc",
    stack_size = 20
  }
})

data:extend({
  {
    type = "recipe",
    name = "nullius-broken-align-transponder",
    localised_name = {"recipe-name.nullius-repair", {"item-name.nullius-align-transponder"}},
    icons = data.raw.item["nullius-broken-align-transponder"].icons,
    enabled = false,
    always_show_made_in = true,
    show_amount_in_title = false,
    always_show_products = true,
    allow_decomposition = false,
    allow_as_intermediate = false,
    no_productivity = true,
    category = "small-crafting",
    subgroup = "alignment",
    order = "nullius-dc",
    energy_required = 3,
    ingredients = {
      {"nullius-broken-align-transponder", 1},
      {"nullius-iron-wire", 1}
    },
    result = "nullius-align-transponder"
  },

  {
    type = "recipe",
    name = "nullius-align-identification-card",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "tiny-crafting",
    energy_required = 8,
    ingredients = {
      {"nullius-steel-sheet", 1},
      {"nullius-plastic", 1}
    },
    result = "nullius-align-identification-card"
  },
  {
    type = "recipe",
    name = "nullius-align-invitation-card",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "tiny-crafting",
    energy_required = 10,
    ingredients = {
      {"nullius-align-identification-card", 1},
      {"nullius-glass", 1},
      {"nullius-aluminum-sheet", 1}
    },
    result = "nullius-align-invitation-card"
  },
  {
    type = "recipe",
    name = "nullius-align-transponder",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "small-crafting",
    energy_required = 12,
    ingredients = {
	  {"nullius-align-identification-card", 1},
	  {"constant-combinator", 1},
	  {"nullius-capacitor", 2}
    },
    result = "nullius-align-transponder"
  },
  {
    type = "recipe",
    name = "nullius-align-conscription-charge",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    show_amount_in_title = false,
    always_show_products = true,
    category = "nullius-electrolysis",
    energy_required = 10,
    ingredients = {
      {"nullius-align-invitation-card", 1},
      {"nullius-align-transponder", 1},
	  {"nullius-capacitor", 4}
    },
    result = "nullius-align-conscription-charge",
	result_count = 3
  },
  {
    type = "recipe",
    name = "nullius-align-conscription-ray",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "small-crafting",
    energy_required = 20,
    ingredients = {
      {"power-switch", 1},
      {"nullius-multi-tool-1", 1},
      {"nullius-relay-1", 1}
    },
    result = "nullius-align-conscription-ray"
  },
  {
    type = "recipe",
    name = "nullius-align-conscription-turret",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "medium-crafting",
    energy_required = 30,
    ingredients = {
      {"nullius-align-conscription-ray", 2},
      {"nullius-night-vision-1", 1},
      {"nullius-transformer", 1},
	  {"nullius-bearing", 1},
	  {"nullius-missile-launcher", 2},
	  {"nullius-steel-beam", 6}
    },
    result = "nullius-align-conscription-turret"
  },
  {
    type = "recipe",
    name = "nullius-align-concordance-transmitter",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "large-crafting",
    energy_required = 60,
    ingredients = {
      {"nullius-align-conscription-turret", 3},
      {"nullius-large-beacon-1", 2},
	  {"nullius-align-conscription-charge", 10}
    },
    result = "nullius-align-concordance-transmitter"
  },
  {
    type = "recipe",
    name = "nullius-align-concordance-satellite",
    enabled = false,
    always_show_made_in = true,
    no_productivity = true,
    category = "huge-crafting",
    energy_required = 300,
    ingredients = {
      {"nullius-align-concordance-transmitter", 3},
      {"nullius-large-beacon-2", 2},
      {"nullius-satellite", 1}
    },
    result = "nullius-align-concordance-satellite"
  }
})


local function alignment_tech(num, item, typ, cnt, tm, pack, ignore, item2)
  local itemname = "nullius-align-" .. item
  local prereq = nil
  if (num > 1) then
    prereq = { "nullius-alignment-" .. (num - 1) }
  end

  local tech = {
    type = "technology",
    name = "nullius-alignment-" .. num,
    order = "nullius-yn",
    icons = data.raw[typ][itemname].icons,
    effects = { { type = "unlock-recipe", recipe = itemname } },
    unit = {
      count = cnt, time = tm,
      ingredients = {{"nullius-" .. pack .. "-pack", 1}}
    },
	prerequisites = prereq,
    ignore_tech_cost_multiplier = ignore,
	enabled = false
  }
  if (item2 ~= nil) then
    tech.effects[2] = { type = "unlock-recipe",
	    recipe = ("nullius-" .. item2) }
  end
  data:extend({ tech })
end

alignment_tech(1, "identification-card", "capsule", 5, 5, "mechanical", true, "broken-align-transponder")
alignment_tech(2, "invitation-card", "capsule", 20, 10, "mechanical", true)
alignment_tech(3, "transponder", "capsule", 50, 25, "electrical", true)
alignment_tech(4, "conscription-ray", "gun", 100, 25, "electrical", true, "align-conscription-charge")
alignment_tech(5, "conscription-turret", "item", 300, 30, "chemical", true)
alignment_tech(6, "concordance-transmitter", "item", 1000, 40, "physics", true)
alignment_tech(7, "concordance-satellite", "item", 3000, 60, "astronomy", true)

end
