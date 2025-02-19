circuit_connector_definitions["cargo-hub"] = circuit_connector_definitions.create
(
  universal_connector_template,
  {
    { variation = 26, main_offset = util.by_pixel(0, 64), shadow_offset = util.by_pixel(2, 78), show_shadow = false },
  }
)

data:extend(
{
  {
    type = "item",
    name = "cargo-roboport",
    icon = "__angelsindustries__/graphics/icons/cargo-roboport.png",
    icon_size = 32,
    subgroup = "angels-cargo-ports",
    order = "a[roboport]-a",
    place_result = "cargo-roboport",
    stack_size = 50
  },
  {
    type = "roboport",
    name = "cargo-roboport",
    icon = "__angelsindustries__/graphics/icons/cargo-roboport.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "cargo-roboport"},
    max_health = 1000,
    corpse = "big-remnants",
    collision_box = {{-2.9, -2.9}, {2.9, 2.9}},
    selection_box = {{-3, -3}, {3, 3}},
    drawing_box = {{-3, -4.33}, {3, 3}},
    dying_explosion = "medium-explosion",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "1MW",
      buffer_capacity = "24MJ"
    },
    recharge_minimum = "20MJ",
    energy_usage = "200kW",
    -- per one charge slot
    charging_energy = "200kW",
    logistics_radius = 7,
    construction_radius = 0,
    charge_approach_distance = 10,
    robot_slots_count = 4,
    material_slots_count = 4,
    stationing_offset = {1.5, -0.25},
    charging_offsets =
    {
      {-1, -1}, {-1, -3}, {1.5, -4}
    },
    base =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-roboport/cargo-roboport.png",
      width = 320,
      height = 320,
      shift = {1, -1}
    },
    base_patch =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-roboport/cargo-roboport-patch.png",
      priority = "medium",
      width = 96,
      height = 96,
      frame_count = 1,
      shift = {46/32, -13/32 }
    },
    base_animation =
    {
      filename = "__angelsindustries__/graphics/entity/empty.png",
      priority = "medium",
      width = 1,
      height = 1,
      frame_count = 1,
      shift = {0, 0}
    },
    door_animation_up =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-roboport/cargo-roboport-door-up.png",
      priority = "medium",
      width = 64,
      height = 32,
      frame_count = 16,
      shift = {1.5, -1}
    },
    door_animation_down =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-roboport/cargo-roboport-door-down.png",
      priority = "medium",
      width = 64,
      height = 32,
      frame_count = 16,
      shift = {1.5, 0}
    },
    recharging_animation =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-roboport/cargoroboport-recharging.png",
      priority = "high",
      width = 74,
      height = 70,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0.6 },
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.5,
      probability = 1 / (5 * 60) -- average pause between the sound is 5 seconds
    },
    recharging_light = {intensity = 0.4, size = 10},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = 0,
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
    open_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 1.2 }
      },
    },
    close_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 0.75 }
      },
    },
    circuit_wire_connection_point = circuit_connector_definitions["cargo-hub"].points,
    circuit_connector_sprites = circuit_connector_definitions["cargo-hub"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
    default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
    default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
    default_total_construction_output_signal = {type = "virtual", name = "signal-T"},
  },
  {
    type = "item",
    name = "cargo-hub",
    icon = "__angelsindustries__/graphics/icons/cargo-hub.png",
    icon_size = 32,
    subgroup = "angels-cargo-ports",
    order = "a[roboport]-c",
    place_result = "cargo-hub",
    stack_size = 50
  },
  {
    type = "roboport",
    name = "cargo-hub",
    icon = "__angelsindustries__/graphics/icons/cargo-hub.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "cargo-hub"},
    max_health = 1000,
    corpse = "big-remnants",
    collision_box = {{-3.4, -3.4}, {3.4, 3.4}},
    selection_box = {{-3.5, -3.5}, {3.5, 3.5}},
    dying_explosion = "medium-explosion",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "2MW",
      buffer_capacity = "48MJ"
    },
    recharge_minimum = "20MJ",
    energy_usage = "200kW",
    -- per one charge slot
    charging_energy = "200kW",
    logistics_radius = 6.5,
    construction_radius = 0,
    charge_approach_distance = 6,
    robot_slots_count = 7,
    material_slots_count = 7,
    stationing_offset = {-0, -1},
    charging_offsets =
    {
      {-3, -1}, {3, -1}, {1.5, 1}, {-1.5, 1}, {1.5, -3}, {-1.5, -3},
    },
    base =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-roboport/cargo-hub.png",
      width = 320,
      height = 320,
      shift = {0.5, -0.25}
    },
    base_patch =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-roboport/cargo-hub-patch.png",
      priority = "medium",
      width = 96,
      height = 96,
      frame_count = 1,
      shift = {0, -0.25}
    },
    base_animation =
    {
      filename = "__angelsindustries__/graphics/entity/empty.png",
      priority = "medium",
      width = 1,
      height = 1,
      frame_count = 1,
      shift = {0, 0}
    },
    door_animation_up =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-roboport/cargo-roboport-door-up.png",
      priority = "medium",
      width = 64,
      height = 32,
      frame_count = 16,
      shift = {0, -1}
    },
    door_animation_down =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-roboport/cargo-roboport-door-down.png",
      priority = "medium",
      width = 64,
      height = 32,
      frame_count = 16,
      shift = {0, 0}
    },
    recharging_animation =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-roboport/cargoroboport-recharging.png",
      priority = "high",
      width = 74,
      height = 70,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0.6 },
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.5,
      probability = 1 / (5 * 60) -- average pause between the sound is 5 seconds
    },
    recharging_light = {intensity = 0.4, size = 10},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = -0.1,
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
    open_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 1.2 }
      },
    },
    close_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 0.75 }
      },
    },
    circuit_wire_connection_point = circuit_connector_definitions["cargo-hub"].points,
    circuit_connector_sprites = circuit_connector_definitions["cargo-hub"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
    default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
    default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
    default_total_construction_output_signal = {type = "virtual", name = "signal-T"},
  },
  {
    type = "item",
    name = "cargo-box",
    icon = "__angelsindustries__/graphics/icons/cargo-box-icon.png",
    icon_size = 32,
    subgroup = "angels-cargo-ports",
    order = "a[roboport]-b",
    place_result = "cargo-box",
    stack_size = 50
  },
  {
    type = "roboport",
    name = "cargo-box",
    icon = "__angelsindustries__/graphics/icons/cargo-box-icon.png",
    icon_size = 32,
    flags = {"placeable-player", "player-creation"},
    minable = {mining_time = 0.5, result = "cargo-box"},
    max_health = 1000,
    corpse = "big-remnants",
    collision_box = {{-1.9, -1.9}, {1.9, 1.9}},
    selection_box = {{-2, -2}, {2, 2}},
    drawing_box = {{-2, -3.33}, {2, 2}},
    dying_explosion = "medium-explosion",
    energy_source =
    {
      type = "electric",
      usage_priority = "secondary-input",
      input_flow_limit = "2MW",
      buffer_capacity = "10MJ"
    },
    recharge_minimum = "5MJ",
    energy_usage = "200kW",
    -- per one charge slot
    charging_energy = "200kW",
    logistics_radius = 7,
    construction_radius = 0,
    charge_approach_distance = 4,
    robot_slots_count = 12,
    material_slots_count = 2,
    stationing_offset = {-0, -0.5},
    charging_offsets =
    {
      {1.5, -2.25}
    },
    base =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-roboport/cargo-box.png",
      width = 192,
      height = 192,
      shift = {0, -0.75}
    },
    base_patch =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-roboport/cargo-box-patch.png",
      priority = "medium",
      width = 96,
      height = 96,
      frame_count = 1,
      shift = {0, -0.75}
    },
    base_animation =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-roboport/cargo-box-animation.png",
      priority = "medium",
      width = 32,
      height = 32,
      frame_count = 16,
      line_length = 4,
      shift = {-1.5, -3.25},
      animation_speed = 0.5
    },
    door_animation_up =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-roboport/cargo-roboport-door-up.png",
      priority = "medium",
      width = 64,
      height = 32,
      frame_count = 16,
      shift = {0, -40/32}
    },
    door_animation_down =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-roboport/cargo-roboport-door-down.png",
      priority = "medium",
      width = 64,
      height = 32,
      frame_count = 16,
      shift = {0, -8/32}
    },
    recharging_animation =
    {
      filename = "__angelsindustries__/graphics/entity/cargo-roboport/cargoroboport-recharging.png",
      priority = "high",
      width = 74,
      height = 70,
      frame_count = 16,
      scale = 1.5,
      animation_speed = 0.5
    },
    vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    working_sound =
    {
      sound = { filename = "__base__/sound/roboport-working.ogg", volume = 0.6 },
      max_sounds_per_type = 3,
      audible_distance_modifier = 0.5,
      probability = 1 / (5 * 60) -- average pause between the sound is 5 seconds
    },
    recharging_light = {intensity = 0.4, size = 10},
    request_to_open_door_timeout = 15,
    spawn_and_station_height = -1,
    draw_logistic_radius_visualization = true,
    draw_construction_radius_visualization = true,
    open_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 1.2 }
      },
    },
    close_door_trigger_effect =
    {
      {
        type = "play-sound",
        sound = { filename = "__base__/sound/roboport-door.ogg", volume = 0.75 }
      },
    },
    circuit_wire_connection_point = circuit_connector_definitions["roboport"].points,
    circuit_connector_sprites = circuit_connector_definitions["roboport"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance,
    default_available_logistic_output_signal = {type = "virtual", name = "signal-X"},
    default_total_logistic_output_signal = {type = "virtual", name = "signal-Y"},
    default_available_construction_output_signal = {type = "virtual", name = "signal-Z"},
    default_total_construction_output_signal = {type = "virtual", name = "signal-T"},
  },
}
)