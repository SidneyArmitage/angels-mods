data:extend(
  {
    {
      type = "item",
      name = "angels-yellow-loader",
      icon = "__angelsindustries__/graphics/icons/loader-yellow-ico.png",
      icon_size = 32,
      subgroup = "angels-loader",
      order = "a[angels-yellow-loader]",
      place_result = "angels-yellow-loader",
      stack_size = 10
    },
    {
      type = "loader",
      name = "angels-yellow-loader",
      icon = "__angelsindustries__/graphics/icons/loader-yellow-ico.png",
      icon_size = 32,
      flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
      minable = {mining_time = 0.5, result = "angels-yellow-loader"},
      max_health = 70,
      filter_count = 5,
      corpse = "small-remnants",
      resistances = {
        {
          type = "fire",
          percent = 60
        }
      },
      collision_box = {{-0.4, -0.9}, {0.4, 0.9}},
      selection_box = {{-0.5, -1}, {0.5, 1}},
      animation_speed_coefficient = 32,
      belt_horizontal = basic_belt_horizontal,
      belt_vertical = basic_belt_vertical,
      ending_top = basic_belt_ending_top,
      ending_bottom = basic_belt_ending_bottom,
      ending_side = basic_belt_ending_side,
      starting_top = basic_belt_starting_top,
      starting_bottom = basic_belt_starting_bottom,
      starting_side = basic_belt_starting_side,
      fast_replaceable_group = "loader",
      speed = 0.03125,
      structure = {
        direction_in = {
          sheet = {
            filename = "__angelsindustries__/graphics/entity/loader/loader-yellow.png",
            priority = "extra-high",
            width = 128,
            height = 128
          }
        },
        direction_out = {
          sheet = {
            filename = "__angelsindustries__/graphics/entity/loader/loader-yellow.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            y = 128
          }
        }
      },
      ending_patch = ending_patch_prototype
    },
    {
      type = "item",
      name = "angels-red-loader",
      icon = "__angelsindustries__/graphics/icons/loader-red-ico.png",
      icon_size = 32,
      subgroup = "angels-loader",
      order = "b[angels-red-loader]",
      place_result = "angels-red-loader",
      stack_size = 10
    },
    {
      type = "loader",
      name = "angels-red-loader",
      icon = "__angelsindustries__/graphics/icons/loader-red-ico.png",
      icon_size = 32,
      flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
      minable = {mining_time = 0.5, result = "angels-red-loader"},
      max_health = 70,
      filter_count = 5,
      corpse = "small-remnants",
      resistances = {
        {
          type = "fire",
          percent = 60
        }
      },
      collision_box = {{-0.4, -0.9}, {0.4, 0.9}},
      selection_box = {{-0.5, -1}, {0.5, 1}},
      animation_speed_coefficient = 32,
      belt_horizontal = basic_belt_horizontal,
      belt_vertical = basic_belt_vertical,
      ending_top = basic_belt_ending_top,
      ending_bottom = basic_belt_ending_bottom,
      ending_side = basic_belt_ending_side,
      starting_top = basic_belt_starting_top,
      starting_bottom = basic_belt_starting_bottom,
      starting_side = basic_belt_starting_side,
      fast_replaceable_group = "loader",
      speed = 0.0625,
      structure = {
        direction_in = {
          sheet = {
            filename = "__angelsindustries__/graphics/entity/loader/loader-red.png",
            priority = "extra-high",
            width = 128,
            height = 128
          }
        },
        direction_out = {
          sheet = {
            filename = "__angelsindustries__/graphics/entity/loader/loader-red.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            y = 128
          }
        }
      },
      ending_patch = ending_patch_prototype
    },
    {
      type = "item",
      name = "angels-blue-loader",
      icon = "__angelsindustries__/graphics/icons/loader-blue-ico.png",
      icon_size = 32,
      subgroup = "angels-loader",
      order = "c[angels-blue-loader]",
      place_result = "angels-blue-loader",
      stack_size = 10
    },
    {
      type = "loader",
      name = "angels-blue-loader",
      icon = "__angelsindustries__/graphics/icons/loader-blue-ico.png",
      icon_size = 32,
      flags = {"placeable-neutral", "player-creation", "fast-replaceable-no-build-while-moving"},
      minable = {mining_time = 0.5, result = "angels-blue-loader"},
      max_health = 70,
      filter_count = 5,
      corpse = "small-remnants",
      resistances = {
        {
          type = "fire",
          percent = 60
        }
      },
      collision_box = {{-0.4, -0.9}, {0.4, 0.9}},
      selection_box = {{-0.5, -1}, {0.5, 1}},
      animation_speed_coefficient = 32,
      belt_horizontal = basic_belt_horizontal,
      belt_vertical = basic_belt_vertical,
      ending_top = basic_belt_ending_top,
      ending_bottom = basic_belt_ending_bottom,
      ending_side = basic_belt_ending_side,
      starting_top = basic_belt_starting_top,
      starting_bottom = basic_belt_starting_bottom,
      starting_side = basic_belt_starting_side,
      fast_replaceable_group = "loader",
      speed = 0.09375,
      structure = {
        direction_in = {
          sheet = {
            filename = "__angelsindustries__/graphics/entity/loader/loader-yellow.png",
            priority = "extra-high",
            width = 128,
            height = 128
          }
        },
        direction_out = {
          sheet = {
            filename = "__angelsindustries__/graphics/entity/loader/loader-yellow.png",
            priority = "extra-high",
            width = 128,
            height = 128,
            y = 128
          }
        }
      },
      ending_patch = ending_patch_prototype
    }
  }
)
