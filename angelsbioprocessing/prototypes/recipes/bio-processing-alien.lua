data:extend(
  {
    --ALIEN ARTIFACTS
    --PRE
    --{
    --  type = "recipe",
    --  name = "alien-air-filtering",
    --  category = "petrochem-air-filtering",
    --  subgroup = "bio-processing-alien-intermediate",
    --  enabled = false,
    --  energy_required = 20,
    --  ingredients ={
    --    {type="fluid", name="water-purified", amount=50},
    --  },
    --  results=
    --  {
    --    {type="fluid", name="alien-spores", amount=50},
    --  },
    --  icon = "__angelsbioprocessing__/graphics/icons/alien-spores.png",
    --  icon_size = 32,
    --  order = "a",
    --},
    {
      type = "recipe",
      name = "alien-spores",
      category = "water-treatment",
      subgroup = "bio-processing-alien-intermediate",
      enabled = false,
      energy_required = 10,
      ingredients = {
        {type = "fluid", name = "liquid-polluted-fish-atmosphere", amount = 100}
      },
      results = {
        {type = "fluid", name = "alien-spores", amount_min = 70, amount_max = 80},
        {type = "fluid", name = "water-yellow-waste", amount_min = 30, amount_max = 40}
      },
      main_product = "alien-spores",
      --icon = "__angelsbioprocessing__/graphics/icons/alien-spores.png",
      --icon_size = 32,
      order = "a[alien]-a[spores]"
    },
    {
      type = "recipe",
      name = "alien-bacteria",
      category = "bio-processing",
      subgroup = "bio-processing-alien-intermediate",
      enabled = false,
      energy_required = 3,
      ingredients = {
        {type = "fluid", name = "alien-spores", amount = 50},
        {type = "item", name = "solid-calcium-carbonate", amount = 1},
        {type = "fluid", name = "liquid-hydrochloric-acid", amount = 50}
      },
      results = {
        {type = "item", name = "alien-bacteria", amount = 1}
      },
      main_product = "alien-bacteria",
      --icon = "__angelsbioprocessing__/graphics/icons/alien-bacteria.png",
      --icon_size = 32,
      order = "a[alien]-b[bacteria]"
    },
    {
      type = "recipe",
      name = "alien-goo",
      category = "liquifying",
      subgroup = "bio-processing-alien-intermediate",
      enabled = false,
      energy_required = 3,
      ingredients = {
        {type = "item", name = "alien-bacteria", amount = 1}
      },
      results = {
        {type = "fluid", name = "alien-goo", amount_min = 5, amount_max = 10}
      },
      main_product = "alien-goo",
      --icon = "__angelsbioprocessing__/graphics/icons/alien-goo.png",
      --icon_size = 32,
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("alien-goo"),
      order = "a[alien]-c[goo]"
    },
    {
      type = "recipe",
      name = "petri-dish",
      subgroup = "bio-processing-alien-intermediate",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "plastic-bar", amount = 1}
      },
      results = {
        {type = "item", name = "petri-dish", amount = 2}
      },
      main_product = "petri-dish",
      --icon = "__angelsbioprocessing__/graphics/icons/petri-dish.png",
      --icon_size = 32,
      order = "b[dish]-a[petri]"
    },
    {
      type = "recipe",
      name = "substrate-dish",
      category = "crafting",
      subgroup = "bio-processing-alien-intermediate",
      enabled = false,
      energy_required = 5,
      ingredients = {
        {type = "item", name = "petri-dish", amount = 3},
        {type = "item", name = "paste-cellulose", amount = 1}
      },
      results = {
        {type = "item", name = "substrate-dish", amount = 3}
      },
      main_product = "substrate-dish",
      --icon = "__angelsbioprocessing__/graphics/icons/substrate-dish.png",
      --icon_size = 32,
      order = "b[dish]-b[substrate]"
    },
    {
      type = "recipe",
      name = "seeded-dish",
      category = "crafting",
      subgroup = "bio-processing-alien-intermediate",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "substrate-dish", amount = 5},
        {type = "item", name = "alien-bacteria", amount = 1}
      },
      results = {
        {type = "item", name = "seeded-dish", amount = 5}
      },
      main_product = "seeded-dish",
      --icon = "__angelsbioprocessing__/graphics/icons/alien-pre-artifact.png",
      --icon_size = 32,
      order = "b[dish]-c[seeded]"
    },
    {
      type = "recipe",
      name = "crystal-seed",
      category = "crafting",
      subgroup = "bio-processing-alien-intermediate",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "seeded-dish", amount = 1},
        {type = "item", name = "crystal-dust", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-seed", amount = 1}
      },
      main_product = "crystal-seed",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "b[dish]-d[seed]-a[crystal]"
    },
    {
      type = "recipe",
      name = "egg-shell-seed",
      category = "crafting",
      subgroup = "bio-processing-alien-intermediate",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "seeded-dish", amount = 1},
        {type = "item", name = "bio-puffer-egg-shell-powder", amount = 1}
      },
      results = {
        {type = "item", name = "egg-shell-seed", amount = 1}
      },
      main_product = "egg-shell-seed",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "b[dish]-d[seed]-a[crystal]"
    },
    {
      type = "recipe",
      name = "crystal-enhancer",
      category = "crafting-with-fluid",
      subgroup = "bio-processing-alien-intermediate",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "seeded-dish", amount = 1},
        {type = "item", name = "crystal-powder", amount = 1},
        {type = "fluid", name = "crystal-slurry", amount = 5}
      },
      results = {
        {type = "item", name = "crystal-enhancer", amount = 1}
      },
      main_product = "crystal-enhancer",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "c[crystal]-a[enhancer]"
    },
    {
      type = "recipe",
      name = "crystal-grindstone",
      category = "crafting",
      subgroup = "bio-processing-alien-intermediate",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "iron-plate", amount = 1},
        {type = "item", name = "crystal-powder", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-grindstone", amount = 1}
      },
      main_product = "crystal-grindstone",
      --icon = "__angelsbioprocessing__/graphics/icons/void.png",
      --icon_size = 32,
      order = "c[crystal]-b[grindstone]"
    },
    {
      type = "recipe",
      name = "crystal-powder-from-dust",
      category = "ore-refining-t1-5",
      subgroup = "bio-biter-processing-crystal-full",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-dust", amount = 10},
        {type = "item", name = "milling-drum", amount = 1}
      },
      results = {
        {type = "item", name = "crystal-powder", amount = 20},
        {type = "item", name = "milling-drum-used", amount = 1, catalyst_amount = 1}
      },
      icons = {
        {
          icon = "__angelsbioprocessing__/graphics/icons/crystal-powder.png"
        },
        {
          icon = "__angelsrefining__/graphics/icons/crystal-dust.png",
          scale = 0.4375,
          shift = {-10, -10}
        }
      },
      icon_size = 32,
      order = "a[creation]-a[powder]"
    },
    {
      type = "recipe",
      name = "crystal-powder-slurry",
      category = "liquifying",
      subgroup = "bio-biter-processing-crystal-full",
      enabled = false,
      energy_required = 2,
      ingredients = {
        {type = "item", name = "crystal-powder", amount = 1},
        {type = "fluid", name = "water-purified", amount = 1}
      },
      results = {
        {type = "fluid", name = "crystal-slurry", amount = 1}
      },
      main_product = "crystal-slurry",
      always_show_products = true,
      icons = angelsmods.functions.create_liquid_recipe_icon(
        nil,
        {{184, 231, 043}, {080, 172, 033}, {055, 126, 017}},
        {"crystal-powder"}
      ),
      crafting_machine_tint = angelsmods.functions.get_fluid_recipe_tint("crystal-slurry"),
      order = "a[creation]-b[slurry]"
    }
  }
)
