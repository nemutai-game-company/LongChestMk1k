data:extend({
  -- items definition
  {
    type = "item",
    name = "iron-chest-mk1",
    icon = "__LongChest1k__/graphics/iron-chest-mk1n.png",
    icon_size = 32,
    subgroup = "storage",
    order = "a[items]-b[iron-chest]",
    place_result = "iron-chest-mk1",
    stack_size = 50
  }
})


data:extend({
  -- entity definition
  {
    type = "container",
    name = "iron-chest-mk1",
    icon = "__LongChest1k__/graphics/iron-chest-mk1n.png",
    icon_size = 32,
    flags = { "placeable-neutral", "player-creation" },
    minable = { mining_time = 1, result = "iron-chest-mk1" },
    max_health = 200,
    corpse = "small-remnants",
    open_sound = { filename = "__base__/sound/metallic-chest-open.ogg", volume = 0.65 },
    close_sound = { filename = "__base__/sound/metallic-chest-close.ogg", volume = 0.7 },
    resistances =
    {
      {
        type = "fire",
        percent = 80
      },
      {
        type = "impact",
        percent = 30
      }
    },
    collision_box = { { -0.35, -7.35 }, { 0.35, 7.35 } },
    selection_box = { { -0.5, -7.5 }, { 0.5, 7.5 } },
    fast_replaceable_group = "container",
    inventory_size = 64,
    vehicle_impact_sound = { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
    picture =
    {
      filename = "__LongChest1k__/graphics/iron-chest-mk1n.png",
      priority = "extra-high",
      width = 34,
      height = 306,
      shift = { 0, -0.25 }
    },
    circuit_wire_connection_point = circuit_connector_definitions["chest"].points,
    circuit_connector_sprites = circuit_connector_definitions["chest"].sprites,
    circuit_wire_max_distance = default_circuit_wire_max_distance
  }
})
