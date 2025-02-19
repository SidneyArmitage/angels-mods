data:extend(
  {
    --T0
    {
      type = "item",
      name = "angels-assembling-machine-0",
      icon = "__base__/graphics/icons/assembling-machine-1.png",
      icon_size = 64,
      subgroup = "angels-assemblers-small",
      order = "a",
      place_result = "angels-assembling-machine-0",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "angels-assembling-machine-0",
      icon = "__base__/graphics/icons/assembling-machine-1.png",
      icon_size = 64,
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      minable = {mining_time = 0.5, result = "angels-assembling-machine-0"},
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      resistances = {
        {
          type = "fire",
          percent = 70
        }
      },
      collision_box = {{-1.2, -1.2}, {1.2, 1.2}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      fast_replaceable_group = "assembling-machine",
      alert_icon_shift = util.by_pixel(-3, -12),
      animation = {
        layers = {
          {
            filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
            priority = "high",
            width = 108,
            height = 114,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 2),
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1.png",
              priority = "high",
              width = 214,
              height = 226,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel(0, 2),
              scale = 0.5
            }
          },
          {
            filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
            priority = "high",
            width = 95,
            height = 83,
            frame_count = 1,
            line_length = 1,
            repeat_count = 32,
            draw_as_shadow = true,
            shift = util.by_pixel(8.5, 5.5),
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1-shadow.png",
              priority = "high",
              width = 190,
              height = 165,
              frame_count = 1,
              line_length = 1,
              repeat_count = 32,
              draw_as_shadow = true,
              shift = util.by_pixel(8.5, 5),
              scale = 0.5
            }
          }
        }
      },
      crafting_categories = {"crafting"},
      crafting_speed = 0.5,
      energy_source = {
        type = "burner",
        fuel_category = "chemical",
        effectivity = 1,
        fuel_inventory_size = 1,
        emissions_per_minute = 0.01
        -- smoke =
        -- {
        -- {
        -- name = "smoke",
        -- deviation = {0.1, 0.1},
        -- frequency = 5,
        -- position = {0.0, -0.8},
        -- starting_vertical_speed = 0.08,
        -- starting_frame_deviation = 60
        -- }
        -- }
      },
      energy_usage = "90kW",
      open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
      close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/assembling-machine-t1-1.ogg",
            volume = 0.8
          },
          {
            filename = "__base__/sound/assembling-machine-t1-2.ogg",
            volume = 0.8
          }
        },
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 1.5
      }
    },
    --T1
    {
      type = "item",
      name = "angels-assembling-machine-small-1",
      icon = "__base__/graphics/icons/assembling-machine-1.png",
      icon_size = 64,
      subgroup = "angels-assemblers-small",
      order = "b",
      place_result = "angels-assembling-machine-small-1",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "angels-assembling-machine-small-1",
      icon = "__base__/graphics/icons/assembling-machine-1.png",
      icon_size = 64,
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      minable = {mining_time = 0.5, result = "angels-assembling-machine-small-1"},
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      resistances = {
        {
          type = "fire",
          percent = 70
        }
      },
      collision_box = {{-1.2 * 2 / 3, -1.2 * 2 / 3}, {1.2 * 2 / 3, 1.2 * 2 / 3}},
      selection_box = {{-1.5 * 2 / 3, -1.5 * 2 / 3}, {1.5 * 2 / 3, 1.5 * 2 / 3}},
      fast_replaceable_group = "assembling-machine-small",
      animation = {
        layers = {
          {
            filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
            priority = "high",
            width = 108,
            height = 114,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 2 * 2 / 3),
            scale = 2 / 3,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1.png",
              priority = "high",
              width = 214,
              height = 226,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel(0, 2 * 2 / 3),
              scale = 0.5 * 2 / 3
            }
          },
          {
            filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
            priority = "high",
            width = 95,
            height = 83,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(8.5 * 2 / 3, 5.5 * 2 / 3),
            scale = 2 / 3,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1-shadow.png",
              priority = "high",
              width = 190,
              height = 165,
              frame_count = 32,
              line_length = 8,
              draw_as_shadow = true,
              shift = util.by_pixel(8.5 * 2 / 3, 5 * 2 / 3),
              scale = 0.5 * 2 / 3
            }
          }
        }
      },
      crafting_categories = {"crafting"},
      crafting_speed = 0.75,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.05 / 1.5
      },
      energy_usage = "90kW",
      open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
      close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/assembling-machine-t1-1.ogg",
            volume = 0.8
          },
          {
            filename = "__base__/sound/assembling-machine-t1-2.ogg",
            volume = 0.8
          }
        },
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 1.5
      }
    },
    {
      type = "item",
      name = "angels-assembling-machine-big-1",
      icon = "__base__/graphics/icons/assembling-machine-1.png",
      icon_size = 64,
      subgroup = "angels-assemblers-big",
      order = "a",
      place_result = "angels-assembling-machine-big-1",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "angels-assembling-machine-big-1",
      icon = "__base__/graphics/icons/assembling-machine-1.png",
      icon_size = 64,
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      minable = {mining_time = 0.5, result = "angels-assembling-machine-big-1"},
      max_health = 300,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      resistances = {
        {
          type = "fire",
          percent = 70
        }
      },
      collision_box = {{-1.2 * 4 / 3, -1.2 * 4 / 3}, {1.2 * 4 / 3, 1.2 * 4 / 3}},
      selection_box = {{-1.5 * 4 / 3, -1.5 * 4 / 3}, {1.5 * 4 / 3, 1.5 * 4 / 3}},
      fast_replaceable_group = "assembling-machine-big",
      animation = {
        layers = {
          {
            filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1.png",
            priority = "high",
            width = 108,
            height = 114,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 2 * 4 / 3),
            scale = 4 / 3,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1.png",
              priority = "high",
              width = 214,
              height = 226,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel(0, 2 * 4 / 3),
              scale = 0.5 * 4 / 3
            }
          },
          {
            filename = "__base__/graphics/entity/assembling-machine-1/assembling-machine-1-shadow.png",
            priority = "high",
            width = 95,
            height = 83,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(8.5 * 4 / 3, 5.5 * 4 / 3),
            scale = 4 / 3,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-1/hr-assembling-machine-1-shadow.png",
              priority = "high",
              width = 190,
              height = 165,
              frame_count = 32,
              line_length = 8,
              draw_as_shadow = true,
              shift = util.by_pixel(8.5 * 4 / 3, 5 * 4 / 3),
              scale = 0.5 * 4 / 3
            }
          }
        }
      },
      crafting_categories = {"crafting"},
      crafting_speed = 0.25,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.05 / 1.5
      },
      energy_usage = "90kW",
      open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
      close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/assembling-machine-t1-1.ogg",
            volume = 0.8
          },
          {
            filename = "__base__/sound/assembling-machine-t1-2.ogg",
            volume = 0.8
          }
        },
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 1.5
      }
    },
    --T2
    {
      type = "item",
      name = "angels-assembling-machine-small-2",
      icon = "__base__/graphics/icons/assembling-machine-2.png",
      icon_size = 64,
      subgroup = "angels-assemblers-small",
      order = "c",
      place_result = "angels-assembling-machine-small-2",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "angels-assembling-machine-small-2",
      icon = "__base__/graphics/icons/assembling-machine-2.png",
      icon_size = 64,
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      minable = {mining_time = 0.5, result = "angels-assembling-machine-small-2"},
      max_health = 350,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      resistances = {
        {
          type = "fire",
          percent = 70
        }
      },
      collision_box = {{-1.2 * 2 / 3, -1.2 * 2 / 3}, {1.2 * 2 / 3, 1.2 * 2 / 3}},
      selection_box = {{-1.5 * 2 / 3, -1.5 * 2 / 3}, {1.5 * 2 / 3, 1.5 * 2 / 3}},
      fast_replaceable_group = "assembling-machine-small",
      animation = {
        layers = {
          {
            filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2.png",
            priority = "high",
            width = 108,
            height = 110,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 4 * 2 / 3),
            scale = 2 / 3,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2.png",
              priority = "high",
              width = 214,
              height = 218,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel(0, 4 * 2 / 3),
              scale = 0.5 * 2 / 3
            }
          },
          {
            filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-shadow.png",
            priority = "high",
            width = 98,
            height = 82,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(12 * 2 / 3, 5 * 2 / 3),
            scale = 2 / 3,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-shadow.png",
              priority = "high",
              width = 196,
              height = 163,
              frame_count = 32,
              line_length = 8,
              draw_as_shadow = true,
              shift = util.by_pixel(12 * 2 / 3, 4.75 * 2 / 3),
              scale = 0.5 * 2 / 3
            }
          }
        }
      },
      open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
      close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/assembling-machine-t2-1.ogg",
            volume = 0.8
          },
          {
            filename = "__base__/sound/assembling-machine-t2-2.ogg",
            volume = 0.8
          }
        },
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 1.5
      },
      crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"},
      crafting_speed = 1,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.04 / 2.5
      },
      energy_usage = "150kW",
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"}
    },
    {
      type = "item",
      name = "angels-assembling-machine-big-2",
      icon = "__base__/graphics/icons/assembling-machine-2.png",
      icon_size = 64,
      subgroup = "angels-assemblers-big",
      order = "b",
      place_result = "angels-assembling-machine-big-2",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "angels-assembling-machine-big-2",
      icon = "__base__/graphics/icons/assembling-machine-2.png",
      icon_size = 64,
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      minable = {mining_time = 0.5, result = "angels-assembling-machine-big-2"},
      max_health = 350,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      resistances = {
        {
          type = "fire",
          percent = 70
        }
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_picture = assembler2pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {0.5, -2.5}}},
          secondary_draw_orders = {north = -1}
        },
        {
          production_type = "output",
          pipe_picture = assembler2pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = 1,
          pipe_connections = {{type = "output", position = {0.5, 2.5}}},
          secondary_draw_orders = {north = -1}
        },
        off_when_no_fluid_recipe = true
      },
      collision_box = {{-1.2 * 4 / 3, -1.2 * 4 / 3}, {1.2 * 4 / 3, 1.2 * 4 / 3}},
      selection_box = {{-1.5 * 4 / 3, -1.5 * 4 / 3}, {1.5 * 4 / 3, 1.5 * 4 / 3}},
      fast_replaceable_group = "assembling-machine-big",
      animation = {
        layers = {
          {
            filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2.png",
            priority = "high",
            width = 108,
            height = 110,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, 4 * 4 / 3),
            scale = 4 / 3,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2.png",
              priority = "high",
              width = 214,
              height = 218,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel(0, 4 * 4 / 3),
              scale = 0.5 * 4 / 3
            }
          },
          {
            filename = "__base__/graphics/entity/assembling-machine-2/assembling-machine-2-shadow.png",
            priority = "high",
            width = 98,
            height = 82,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(12 * 4 / 3, 5 * 4 / 3),
            scale = 4 / 3,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-2/hr-assembling-machine-2-shadow.png",
              priority = "high",
              width = 196,
              height = 163,
              frame_count = 32,
              line_length = 8,
              draw_as_shadow = true,
              shift = util.by_pixel(12 * 4 / 3, 4.75 * 4 / 3),
              scale = 0.5 * 4 / 3
            }
          }
        }
      },
      open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
      close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/assembling-machine-t2-1.ogg",
            volume = 0.8
          },
          {
            filename = "__base__/sound/assembling-machine-t2-2.ogg",
            volume = 0.8
          }
        },
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 1.5
      },
      crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"},
      crafting_speed = 0.5,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.04 / 2.5
      },
      energy_usage = "150kW",
      module_specification = {
        module_slots = 2
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"}
    },
    --T3
    {
      type = "item",
      name = "angels-assembling-machine-small-3",
      icon = "__base__/graphics/icons/assembling-machine-3.png",
      icon_size = 64,
      subgroup = "angels-assemblers-small",
      order = "d",
      place_result = "angels-assembling-machine-small-3",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "angels-assembling-machine-small-3",
      icon = "__base__/graphics/icons/assembling-machine-3.png",
      icon_size = 64,
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      minable = {mining_time = 0.5, result = "angels-assembling-machine-small-3"},
      max_health = 400,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      resistances = {
        {
          type = "fire",
          percent = 70
        }
      },
      open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
      close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/assembling-machine-t3-1.ogg",
            volume = 0.8
          },
          {
            filename = "__base__/sound/assembling-machine-t3-2.ogg",
            volume = 0.8
          }
        },
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 1.5
      },
      collision_box = {{-1.2 * 2 / 3, -1.2 * 2 / 3}, {1.2 * 2 / 3, 1.2 * 2 / 3}},
      selection_box = {{-1.5 * 2 / 3, -1.5 * 2 / 3}, {1.5 * 2 / 3, 1.5 * 2 / 3}},
      fast_replaceable_group = "assembling-machine-small",
      animation = {
        layers = {
          {
            filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3.png",
            priority = "high",
            width = 108,
            height = 119,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, -0.5 * 2 / 3),
            scale = 2 / 3,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3.png",
              priority = "high",
              width = 214,
              height = 237,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel(0, -0.75 * 2 / 3),
              scale = 0.5 * 2 / 3
            }
          },
          {
            filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-shadow.png",
            priority = "high",
            width = 130,
            height = 82,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(28 * 2 / 3, 4 * 2 / 3),
            scale = 2 / 3,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-shadow.png",
              priority = "high",
              width = 260,
              height = 162,
              frame_count = 32,
              line_length = 8,
              draw_as_shadow = true,
              shift = util.by_pixel(28 * 2 / 3, 4 * 2 / 3),
              scale = 0.5 * 2 / 3
            }
          }
        }
      },
      crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"},
      crafting_speed = 1.5,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.03 / 3.5
      },
      energy_usage = "210kW",
      module_specification = {
        module_slots = 4
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"}
    },
    {
      type = "item",
      name = "angels-assembling-machine-big-3",
      icon = "__base__/graphics/icons/assembling-machine-3.png",
      icon_size = 64,
      subgroup = "angels-assemblers-big",
      order = "c",
      place_result = "angels-assembling-machine-big-3",
      stack_size = 10
    },
    {
      type = "assembling-machine",
      name = "angels-assembling-machine-big-3",
      icon = "__base__/graphics/icons/assembling-machine-3.png",
      icon_size = 64,
      flags = {"placeable-neutral", "placeable-player", "player-creation"},
      minable = {mining_time = 0.5, result = "angels-assembling-machine-big-3"},
      max_health = 400,
      corpse = "big-remnants",
      dying_explosion = "medium-explosion",
      resistances = {
        {
          type = "fire",
          percent = 70
        }
      },
      fluid_boxes = {
        {
          production_type = "input",
          pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = -1,
          pipe_connections = {{type = "input", position = {0.5, -2.5}}},
          secondary_draw_orders = {north = -1}
        },
        {
          production_type = "output",
          pipe_picture = assembler3pipepictures(),
          pipe_covers = pipecoverspictures(),
          base_area = 10,
          base_level = 1,
          pipe_connections = {{type = "output", position = {0.5, 2.5}}},
          secondary_draw_orders = {north = -1}
        },
        off_when_no_fluid_recipe = true
      },
      open_sound = {filename = "__base__/sound/machine-open.ogg", volume = 0.85},
      close_sound = {filename = "__base__/sound/machine-close.ogg", volume = 0.75},
      vehicle_impact_sound = {filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65},
      working_sound = {
        sound = {
          {
            filename = "__base__/sound/assembling-machine-t3-1.ogg",
            volume = 0.8
          },
          {
            filename = "__base__/sound/assembling-machine-t3-2.ogg",
            volume = 0.8
          }
        },
        idle_sound = {filename = "__base__/sound/idle1.ogg", volume = 0.6},
        apparent_volume = 1.5
      },
      collision_box = {{-1.2 * 4 / 3, -1.2 * 4 / 3}, {1.2 * 4 / 3, 1.2 * 4 / 3}},
      selection_box = {{-1.5 * 4 / 3, -1.5 * 4 / 3}, {1.5 * 4 / 3, 1.5 * 4 / 3}},
      fast_replaceable_group = "assembling-machine-big",
      animation = {
        layers = {
          {
            filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3.png",
            priority = "high",
            width = 108,
            height = 119,
            frame_count = 32,
            line_length = 8,
            shift = util.by_pixel(0, -0.5 * 4 / 3),
            scale = 4 / 3,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3.png",
              priority = "high",
              width = 214,
              height = 237,
              frame_count = 32,
              line_length = 8,
              shift = util.by_pixel(0, -0.75 * 4 / 3),
              scale = 0.5 * 4 / 3
            }
          },
          {
            filename = "__base__/graphics/entity/assembling-machine-3/assembling-machine-3-shadow.png",
            priority = "high",
            width = 130,
            height = 82,
            frame_count = 32,
            line_length = 8,
            draw_as_shadow = true,
            shift = util.by_pixel(28 * 4 / 3, 4 * 4 / 3),
            scale = 4 / 3,
            hr_version = {
              filename = "__base__/graphics/entity/assembling-machine-3/hr-assembling-machine-3-shadow.png",
              priority = "high",
              width = 260,
              height = 162,
              frame_count = 32,
              line_length = 8,
              draw_as_shadow = true,
              shift = util.by_pixel(28 * 4 / 3, 4 * 4 / 3),
              scale = 0.5 * 4 / 3
            }
          }
        }
      },
      crafting_categories = {"crafting", "advanced-crafting", "crafting-with-fluid"},
      crafting_speed = 1,
      energy_source = {
        type = "electric",
        usage_priority = "secondary-input",
        emissions_per_minute = 0.03 / 3.5
      },
      energy_usage = "210kW",
      module_specification = {
        module_slots = 4
      },
      allowed_effects = {"consumption", "speed", "productivity", "pollution"}
    }
  }
)
