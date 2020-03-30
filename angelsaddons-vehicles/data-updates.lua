if angelsmods.industries then
  local function update_grid(grid, add, remove)
    local function flip_t(tab)
      local new_t = {}
      for k, v in pairs(tab) do
        new_t[v] = k
      end
      return new_t
    end
    if type(add) == "string" then
      add = {add}
    end
    if type(remove) == "string" then
      remove = {remove}
    end

    add = add or {}
    remove = remove or {}

    local equipgrid = data.raw["equipment-grid"][grid].equipment_categories
    local flip_equipgrid = flip_t(equipgrid)
    for name, value in pairs(remove) do
      if flip_equipgrid[value] then
        equipgrid[flip_equipgrid[value]] = nil
      end
    end
    for name, value in pairs(add) do
      if not flip_equipgrid[value] then
        table.insert(equipgrid, value)
      end
    end
  end
  local OV = angelsmods.functions.OV

  if angelsmods.industries.components then
    if angelsmods.addons.vehicles.smeltingtrain then
      require("prototypes.recipes.components.smeltingtrain")
    end
    if angelsmods.addons.vehicles.petrotrain then
      require("prototypes.recipes.components.petrotrain")
    end
    if angelsmods.addons.vehicles.crawlertrain then
      require("prototypes.recipes.components.crawlertrain")
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

  if angelsmods.addons.vehicles.crawlertrain then
    -- Update equipment grid
    update_grid(
      "angels-crawler-locomotive",
      {
        "angels-energy",
        "angels-heavy-defense",
        "angels-movement"
      },
      "angels-void"
    )
    update_grid(
      "angels-crawler-loco-wagon",
      {
        "angels-energy",
        "angels-heavy-defense",
        "angels-movement"
      },
      "angels-void"
    )
    update_grid(
      "angels-crawler-wagon",
      {
        "angels-energy",
        "angels-repair",
        "angels-heavy-defense",
        "angels-movement"
      },
      "angels-void"
    )
    update_grid(
      "angels-crawler-bot-wagon",
      {
        "angels-energy",
        "angels-repair",
        "angels-heavy-defense",
        "angels-construction",
        "angels-movement"
      },
      "angels-void"
    )

    data.raw["item-subgroup"]["angels-crawler-train"].group = "angels-vehicles"
    data.raw["item-subgroup"]["angels-crawler-train"].order = "bc[crawler-train]"
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

  if angelsmods.addons.vehicles.crawlertrain then
    -- crawler locomotive
    table.insert(data.raw["equipment-grid"]["angels-crawler-locomotive"].equipment_categories, "train")
    table.insert(data.raw["equipment-grid"]["angels-crawler-locomotive"].equipment_categories, "vehicle")
    table.insert(data.raw["equipment-grid"]["angels-crawler-locomotive"].equipment_categories, "locomotive")
    table.insert(data.raw["equipment-grid"]["angels-crawler-loco-wagon"].equipment_categories, "train")
    table.insert(data.raw["equipment-grid"]["angels-crawler-loco-wagon"].equipment_categories, "vehicle")
    table.insert(data.raw["equipment-grid"]["angels-crawler-loco-wagon"].equipment_categories, "locomotive")
    -- crawler wagon
    table.insert(data.raw["equipment-grid"]["angels-crawler-wagon"].equipment_categories, "train")
    table.insert(data.raw["equipment-grid"]["angels-crawler-wagon"].equipment_categories, "vehicle")
    -- crawler bot wagon
    table.insert(data.raw["equipment-grid"]["angels-crawler-bot-wagon"].equipment_categories, "train")
    table.insert(data.raw["equipment-grid"]["angels-crawler-bot-wagon"].equipment_categories, "vehicle")
    table.insert(data.raw["equipment-grid"]["angels-crawler-bot-wagon"].equipment_categories, "cargo-wagon")
  end
end
