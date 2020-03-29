if angelsmods.industries then
  local OV = angelsmods.functions.OV
  if angelsmods.industries.components then
    if angelsmods.addons.vehicles.smeltingtrain then
      require("prototypes.recipes.components.smeltingtrain")
    end
    if angelsmods.addons.vehicles.petrotrain then
      require("prototypes.recipes.components.petrotrain")
    end
  end

  if angelsmods.addons.vehicles.smeltingtrain then
    data.raw["item-subgroup"]["angels-smeltingtrain"].group = "angels-vehicles"
    data.raw["item-subgroup"]["angels-smeltingtrain"].order = "bc[smelting-train]"
  end

  if angelsmods.addons.vehicles.petrotrain then
    OV.modify_input("petro-tank1", {"angels-storage-tank-1", "storage-tank"})
    OV.modify_input("petro-tank2", {"angels-storage-tank-2", "storage-tank"})
    data.raw["item-subgroup"]["angels-petrotrain"].group = "angels-vehicles"
    data.raw["item-subgroup"]["angels-petrotrain"].order = "bd[petro-train]"
  end
end

if mods["bobvehicleequipment"] then
  if angelsmods.addons.vehicles.smeltingtrain then
    -- smelting locomotive
    table.insert(data.raw["equipment-grid"]["angels-smelting-locomotive"].equipment_categories, "train")
    table.insert(data.raw["equipment-grid"]["angels-smelting-locomotive"].equipment_categories, "vehicle")
    table.insert(data.raw["equipment-grid"]["angels-smelting-locomotive"].equipment_categories, "locomotive")
    -- smelting wagon
    table.insert(data.raw["equipment-grid"]["angels-smelting-wagon"].equipment_categories, "train")
    table.insert(data.raw["equipment-grid"]["angels-smelting-wagon"].equipment_categories, "vehicle")
  end
  if angelsmods.addons.vehicles.petrotrain then
    -- petro locomotive
    table.insert(data.raw["equipment-grid"]["angels-petro-locomotive"].equipment_categories, "train")
    table.insert(data.raw["equipment-grid"]["angels-petro-locomotive"].equipment_categories, "vehicle")
    table.insert(data.raw["equipment-grid"]["angels-petro-locomotive"].equipment_categories, "locomotive")
    -- petro tank wagon
    table.insert(data.raw["equipment-grid"]["angels-petro-tank-wagon"].equipment_categories, "train")
    table.insert(data.raw["equipment-grid"]["angels-petro-tank-wagon"].equipment_categories, "vehicle")
  end
end
