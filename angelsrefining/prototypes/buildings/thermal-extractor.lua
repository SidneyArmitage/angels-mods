data:extend(
  {
    {
      type = "item",
      name = "thermal-bore",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/thermal-extractor.png",
            icon_size = 32, icon_mipmaps = 1
          }
        },
        1, angelsmods.refining.number_tint),
      subgroup = "refining-buildings",
      order = "a[thermal-extractor]-a[bore]",
      place_result = "thermal-bore",
      stack_size = 10
    },
    {
      type = "mining-drill",
      name = "thermal-bore",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/thermal-extractor.png",
            icon_size = 32, icon_mipmaps = 1
          }
        },
        1, angelsmods.refining.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "thermal-bore"},
      resource_categories = {"angels-fissure"},
      max_health = 100,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "pollution", "productivity"},
      energy_source = {
        type = "electric",
        emissions_per_minute = 0.01 * 60 * 2,
        usage_priority = "secondary-input"
      },
      output_fluid_box = {
        base_area = 5,
        base_level = 1,
        pipe_covers = pipecoverspictures(),
        pipe_connections =
        {
          {
            positions = { {1, -2}, {2, -1}, {-1, 2}, {-2, 1} }
          }
        }
      },
      energy_usage = "90kW",
      mining_speed = 0.75,
      --mining_power = 3,
      resource_searching_radius = 0.49,
      vector_to_place_result = {0, 0},
      module_specification = {
        module_slots = 2
      },
      radius_visualisation_picture = {
        filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
        width = 12,
        height = 12
      },
      monitor_visualization_tint = {r = 78, g = 173, b = 255},
      base_picture =
      {
        sheets =
        {
          {
            filename = "__base__/graphics/entity/pumpjack/pumpjack-base.png",
            priority = "extra-high",
            width = 131,
            height = 137,
            shift = util.by_pixel(-2.5, -4.5),
            hr_version =
            {
              filename = "__base__/graphics/entity/pumpjack/hr-pumpjack-base.png",
              priority = "extra-high",
              width = 261,
              height = 273,
              shift = util.by_pixel(-2.25, -4.75),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/pumpjack/pumpjack-base-shadow.png",
            priority = "extra-high",
            width = 110,
            height = 111,
            draw_as_shadow = true,
            shift = util.by_pixel(6, 0.5),
            hr_version =
            {
              filename = "__base__/graphics/entity/pumpjack/hr-pumpjack-base-shadow.png",
              width = 220,
              height = 220,
              scale = 0.5,
              draw_as_shadow = true,
              shift = util.by_pixel(6, 0.5)
            }
          }
        }
      },
      animations =
      {
        north =
        {
          layers =
          {
            {
              priority = "high",
              filename = "__base__/graphics/entity/pumpjack/pumpjack-horsehead.png",
              line_length = 8,
              width = 104,
              height = 102,
              frame_count = 40,
              shift = util.by_pixel(-4, -24),
              animation_speed = 0.5,
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/pumpjack/hr-pumpjack-horsehead.png",
                animation_speed = 0.5,
                scale = 0.5,
                line_length = 8,
                width = 206,
                height = 202,
                frame_count = 40,
                shift = util.by_pixel(-4, -24)
              }
            },
            {
              priority = "high",
              filename = "__base__/graphics/entity/pumpjack/pumpjack-horsehead-shadow.png",
              animation_speed = 0.5,
              draw_as_shadow = true,
              line_length = 8,
              width = 155,
              height = 41,
              frame_count = 40,
              shift = util.by_pixel(17.5, 14.5),
              hr_version =
              {
                priority = "high",
                filename = "__base__/graphics/entity/pumpjack/hr-pumpjack-horsehead-shadow.png",
                animation_speed = 0.5,
                draw_as_shadow = true,
                line_length = 8,
                width = 309,
                height = 82,
                frame_count = 40,
                scale = 0.5,
                shift = util.by_pixel(17.75, 14.5)
              }
            }
          }
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelsrefining__/sound/thermal-extractor.ogg"},
        apparent_volume = 1.5
      },
      fast_replaceable_group = "thermal-extractor"
    },
    {
      type = "item",
      name = "thermal-extractor",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/thermal-extractor.png",
            icon_size = 32, icon_mipmaps = 1
          }
        },
        2, angelsmods.refining.number_tint),
      subgroup = "refining-buildings",
      order = "a[thermal-extractor]-b[extractor]",
      place_result = "thermal-extractor",
      stack_size = 10
    },
    {
      type = "mining-drill",
      name = "thermal-extractor",
      icons = angelsmods.functions.add_number_icon_layer(
        {
          {
            icon = "__angelsrefining__/graphics/icons/thermal-extractor.png",
            icon_size = 32, icon_mipmaps = 1
          }
        },
        2, angelsmods.refining.number_tint),
      flags = {"placeable-neutral", "player-creation"},
      minable = {mining_time = 1, result = "thermal-extractor"},
      resource_categories = {"angels-fissure"},
      max_health = 100,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      collision_box = {{-4.4, -4.4}, {4.4, 4.4}},
      selection_box = {{-4.5, -4.5}, {4.5, 4.5}},
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "pollution", "productivity"},
      energy_source = {
        type = "electric",
        emissions_per_minute = 0.01 * 60,
        usage_priority = "secondary-input"
      },
      output_fluid_box = {
        base_area = 10,
        base_level = 1,
        pipe_covers = pipecoverspictures(),
        pipe_connections = {
          {
            position = {-3, 5}
          }
        }
      },
      energy_usage = "90kW",
      mining_speed = 2,
      --mining_power = 3,
      resource_searching_radius = 0.49,
      vector_to_place_result = {0, 0},
      module_specification = {
        module_slots = 2
      },
      radius_visualisation_picture = {
        filename = "__base__/graphics/entity/pumpjack/pumpjack-radius-visualization.png",
        width = 12,
        height = 12
      },
      monitor_visualization_tint = {r = 78, g = 173, b = 255},
      base_picture = {
        sheet = {
          filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-base.png",
          priority = "extra-high",
          width = 288,
          height = 288,
          shift = {0, 0}
        }
      },
      animations = {
        north = {
          priority = "extra-high",
          width = 288,
          height = 288,
          line_length = 4,
          shift = {0, 0},
          filename = "__angelsrefining__/graphics/entity/thermal-extractor/thermal-extractor-animation.png",
          frame_count = 16,
          animation_speed = 0.5
        }
      },
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {filename = "__angelsrefining__/sound/thermal-extractor.ogg"},
        apparent_volume = 1.5
      },
      fast_replaceable_group = "thermal-extractor"
    }
  }
)
