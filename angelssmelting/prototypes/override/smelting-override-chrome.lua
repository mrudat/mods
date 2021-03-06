local OV = angelsmods.functions.OV
local intermediatemulti = angelsmods.marathon.intermediatemulti

if angelsmods.trigger.smelting_products["enable-all"] then
  angelsmods.trigger.smelting_products["chrome"].ingot = true
  angelsmods.trigger.smelting_products["chrome"].plate = true
  angelsmods.trigger.smelting_products["chrome"].powder = true
end

-------------------------------------------------------------------------------
-- INGOT ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["chrome"].ingot then
  if angelsmods.trigger.smelting_products["chrome"].plate then
  else
    -- no need for molten recipe
    data.raw.fluid["liquid-molten-chrome"].hidden = true
    OV.disable_recipe({ "molten-chrome-smelting" })
  end
else
  angelsmods.functions.add_flag("processed-chrome", "hidden")
  angelsmods.functions.add_flag("pellet-chrome", "hidden")
  angelsmods.functions.add_flag("solid-chromate", "hidden")
  angelsmods.functions.add_flag("solid-dichromate", "hidden")
  angelsmods.functions.add_flag("solid-chrome-oxide", "hidden")
  angelsmods.functions.add_flag("ingot-chrome", "hidden")
  data.raw.fluid["liquid-molten-chrome"].hidden = true
  OV.disable_recipe({ "chrome-ore-processing", "chrome-processed-processing", "pellet-chrome-smelting" })
  OV.disable_recipe({ "solid-chromate-smelting", "solid-dichromate-smelting" })
  OV.disable_recipe({ "chrome-ore-smelting", "processed-chrome-smelting", "solid-chrome-oxide-smelting" })
  OV.disable_recipe({ "molten-chrome-smelting" })

  OV.disable_technology({"angels-chrome-smelting-1", "angels-chrome-smelting-2", "angels-chrome-smelting-3"})
end

-------------------------------------------------------------------------------
-- PLATE ----------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["chrome"].plate then
else
  angelsmods.functions.add_flag("angels-plate-chrome", "hidden")
  angelsmods.functions.add_flag("angels-roll-chrome", "hidden")
  OV.disable_recipe({ "roll-chrome-casting", "roll-chrome-casting-fast" })
  OV.disable_recipe({ "angels-plate-chrome", "angels-roll-chrome-converting" })
end

-------------------------------------------------------------------------------
-- POWDER ---------------------------------------------------------------------
-------------------------------------------------------------------------------
if angelsmods.trigger.smelting_products["chrome"].powder then
else
  angelsmods.functions.add_flag("powder-chrome", "hidden")
  OV.disable_recipe({ "powder-chrome" })
end