local OV = angelsmods.functions.OV
-- CUSTOM FIXES FOR BOBS (bobs mods are listed alphabetically)
if angelsmods.industries.components then
  -----------------------------------------------------------------------------
  -- BOB ASSEMBLY -------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobassembly"] and settings.startup["bobmods-assembly-electronicmachines"].value then -- electronic assemblers
    OV.patch_recipes(
      {
        { name = "circuit-grey-board", category = "electronics" },
        { name = "circuit-grey-board-alternative", category = "electronics" },
        { name = "circuit-red-board", category = "electronics" },
        { name = "circuit-green-board", category = "electronics-machine" },
        { name = "circuit-orange-board", category = "electronics-machine" },
        { name = "circuit-blue-board", category = "electronics-machine" },
        --{ name = "circuit-yellow-board", category = "electronics-machine" },

        { name = "circuit-grey", category = "electronics" },
        { name = "circuit-red", category = "electronics" },
        { name = "circuit-green", category = "electronics-machine" },
        { name = "circuit-orange", category = "electronics-machine" },
        { name = "circuit-blue", category = "electronics-machine" },
        { name = "circuit-yellow", category = "electronics-machine" },

        { name = "circuit-red-loaded", category = "electronics" },
        { name = "circuit-green-loaded", category = "electronics-machine" },
        { name = "circuit-orange-loaded", category = "electronics-machine" },
        { name = "circuit-blue-loaded", category = "electronics-machine" },
        { name = "circuit-yellow-loaded", category = "electronics-machine" },

        { name = "circuit-resistor", category = "electronics" },
        { name = "circuit-transistor", category = "electronics-machine" },
        { name = "circuit-microchip", category = "electronics-machine" },
        { name = "circuit-transformer", category = "electronics-machine" },
        { name = "circuit-cpu", category = "electronics-machine" },
        { name = "electronic-parts-resistor", category = "electronics-machine" },
        { name = "electronic-parts-transistor", category = "electronics-machine" },
        { name = "electronic-parts-microchip", category = "electronics-machine" },
        { name = "electronic-parts-transformer", category = "electronics-machine" },
        { name = "electronic-parts-cpu", category = "electronics-machine" },

        { name = "block-electronics-0", category = "electronics" },
        { name = "block-electronics-1", category = "electronics" },
        { name = "block-electronics-2", category = "electronics-machine" },
        { name = "block-electronics-3", category = "electronics-machine" },
        { name = "block-electronics-4", category = "electronics-machine" },
        { name = "block-electronics-5", category = "electronics-machine" },
      }
    )
  end

  -----------------------------------------------------------------------------
  -- BOB ELECTRONICS ----------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobelectronics"] then
    OV.disable_recipe("wooden-board-paper")
    OV.disable_recipe("superior-circuit-board")
  end

  -----------------------------------------------------------------------------
  -- BOB EQUIPMENT ------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobequipment"] then
    -- roboports
    OV.patch_recipes(
      {
        {
          name = "personal-roboport-mk2-equipment",
          ingredients = {
            { type = "item", name = "battery-3", amount = "battery-5"}
          }
        },
      }
    )
    OV.remove_prereq("personal-roboport-mk2-equipment", "angels-components-batteries-5")
    OV.add_prereq("personal-roboport-mk2-equipment", "angels-components-batteries-3")
    OV.add_prereq("personal-roboport-mk3-equipment", "angels-components-batteries-4")

    -- exoskeleton
    OV.patch_recipes(
      {
        {
          name = "exoskeleton-equipment",
          ingredients =
          {
            { type = "item", name = "motor-3", amount = "motor-4" },
          },
        }
      }
    )
    OV.remove_prereq("exoskeleton-equipment", "electric-engine")
    OV.add_prereq("exoskeleton-equipment", "angels-components-mechanical-3")
    OV.add_prereq("exoskeleton-equipment", "tech-orange-circuit")
  end

  -----------------------------------------------------------------------------
  -- BOB REVAMP ---------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobrevamp"] then
    -- add 1000 heat shields to rocket
    OV.patch_recipes(
      {
        {
          name = "angels-rocket-ion-thruster",
          ingredients = {
            { type = "item", name = "heat-shield-tile", amount = 20}
          }
        },
        {
          name = "angels-rocket-ion-booster",
          ingredients = {
            { type = "item", name = "heat-shield-tile", amount = 50}
          }
        },
        {
          name = "angels-rocket-hull",
          ingredients = {
            { type = "item", name = "heat-shield-tile", amount = 25}
          }
        },
      }
    )
    OV.add_prereq("angels-rocket-ion-thruster", "heat-shield")
    OV.add_prereq("angels-rocket-hull", "heat-shield")
  end
  
  -----------------------------------------------------------------------------
  -- BOB MODULES --------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobmodules"] then
    --replace green with orange boards on logic step
    local module_recs={}
    for _,type in pairs({"speed","effectivity","productivity","pollution-clean","pollution-create"}) do
      table.insert(module_recs,{
        name = type.."-processor-2",
        ingredients = {
          { type = "item", name = "circuit-orange-loaded", amount = "circuit-green-loaded"}
        }
      })
    end
    OV.patch_recipes(module_recs)
  end

  -----------------------------------------------------------------------------
  -- BOB PLATES ---------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobplates"] then
    OV.global_replace_technology("battery-2", "angels-components-batteries-3")
    OV.disable_technology("battery-2")
    OV.disable_recipe("lithium-cobalt-oxide")

    OV.global_replace_technology("battery-3", "angels-components-batteries-4")
    OV.disable_technology("battery-3")
    OV.add_unlock("angels-components-batteries-6", "silver-oxide")
  end

  -----------------------------------------------------------------------------
  -- BOB POWER ----------------------------------------------------------------
  -----------------------------------------------------------------------------
  if mods["bobpower"] then
    OV.add_prereq("bob-boiler-2", "angels-components-construction-2")
  end

  OV.execute()
end