angelsmods = angelsmods or {}
angelsmods.addons = angelsmods.addons or {}
angelsmods.addons.storage = angelsmods.addons.storage or {}

--TRIGGERS
angelsmods.addons.storage.icon_scaling = settings.startup["angelsaddons-storage-enable-icon-scaling"].value
angelsmods.addons.storage.warehouses = settings.startup["angelsaddons-storage-enable-warehouse"].value
angelsmods.addons.storage.oresilos = settings.startup["angelsaddons-storage-enable-oresilo"].value
angelsmods.addons.storage.pressuretanks = settings.startup["angelsaddons-storage-enable-pressuretank"].value

--LOAD PROTOTYPES
require("prototypes.storage-category")

if angelsmods.addons.storage.warehouses then
  require("prototypes.buildings.warehouses")
  require("prototypes.recipes.warehouses")
  require("prototypes.technology.warehouses")
end

if angelsmods.addons.storage.oresilos then
  require("prototypes.buildings.ore-silos")
  require("prototypes.recipes.ore-silos")
  require("prototypes.technology.ore-silo")
end

if angelsmods.addons.storage.pressuretanks then
  require("prototypes.buildings.pressure-tanks")
  require("prototypes.recipes.pressure-tanks")
  require("prototypes.technology.pressure-tanks")
end
