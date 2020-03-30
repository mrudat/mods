angelsmods = angelsmods or {}
angelsmods.addons = angelsmods.addons or {}
angelsmods.addons.vehicles = angelsmods.addons.vehicles or {}
angelsmods.addons.vehicles.enable_tiers = settings.startup["angelsaddons-vehicles-tier-enable"].value
angelsmods.addons.vehicles.tier_amount = settings.startup["angelsaddons-vehicles-tier-amount"].value
angelsmods.addons.vehicles.smeltingtrain = settings.startup["angelsaddons-vehicles-enable-smeltingtrains"].value
angelsmods.addons.vehicles.petrotrain = settings.startup["angelsaddons-vehicles-enable-petrotrains"].value
angelsmods.addons.vehicles.crawlertrain = settings.startup["angelsaddons-vehicles-enable-crawlertrains"].value
angelsmods.addons.vehicles.number_tint = {r = 1, g = 0.38, b = 0, a = 1}

tech_unlocks = {}

require("prototypes.category")

if angelsmods.addons.vehicles.smeltingtrain then
  require("prototypes.entities.smeltingtrain")
  require("prototypes.recipes.smeltingtrain")
  require("prototypes.technology.smeltingtrain")
end

if angelsmods.addons.vehicles.petrotrain then
  require("prototypes.entities.petrotrain")
  require("prototypes.recipes.petrotrain")
  require("prototypes.technology.petrotrain")
end

if angelsmods.addons.vehicles.crawlertrain then
  require("prototypes.equipment-grid")
  require("prototypes.entities.crawlertrain")
  require("prototypes.entities.crawlerwagon")
  require("prototypes.recipes.crawlertrain")
  require("prototypes.technology.crawlertrain")
end

tech_unlocks = nil
