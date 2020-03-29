angelsmods = angelsmods or {}
angelsmods.addons = angelsmods.addons or {}
angelsmods.addons.vehicles = angelsmods.addons.vehicles or {}
angelsmods.addons.vehicles.enable_tiers = settings.startup["angelsaddons-vehicles-tier-enable"].value
angelsmods.addons.vehicles.tier_amount = settings.startup["angelsaddons-vehicles-tier-amount"].value
angelsmods.addons.vehicles.smeltingtrain = settings.startup["angelsaddons-vehicles-enable-smeltingtrains"].value
angelsmods.addons.vehicles.number_tint = {r = 1, g = 0.38, b = 0, a = 1}

tech_unlocks = {}

require("prototypes.category")
require("prototypes.entities.smeltingtrain")
require("prototypes.recipes.smeltingtrain")
require("prototypes.technology.smeltingtrain")

tech_unlocks = nil
