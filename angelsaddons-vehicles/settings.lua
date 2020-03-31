data:extend(
  {
    {
      type = "bool-setting",
      name = "angelsaddons-vehicles-tier-enable",
      setting_type = "startup",
      default_value = false,
      order = "a"
    },
    {
      type = "int-setting",
      name = "angelsaddons-vehicles-tier-amount",
      setting_type = "startup",
      default_value = 1,
      minimum_value = 1,
      maximum_value = 5,
      order = "b"
    },
    {
      type = "bool-setting",
      name = "angelsaddons-vehicles-enable-smeltingtrains",
      setting_type = "startup",
      default_value = true,
      order = "c"
    },
    {
      type = "bool-setting",
      name = "angelsaddons-vehicles-enable-petrotrains",
      setting_type = "startup",
      default_value = true,
      order = "d"
    },
    {
      type = "bool-setting",
      name = "angelsaddons-vehicles-enable-crawlertrains",
      setting_type = "startup",
      default_value = mods.angelsindustries and true or false,
      order = "e"
    },
    {
      type = "bool-setting",
      name = "angelsaddons-vehicles-enable-crawler",
      setting_type = "startup",
      default_value = true,
      order = "f"
    },
    {
      type = "bool-setting",
      name = "angelsaddons-vehicles-enable-cab",
      setting_type = "startup",
      default_value = mods.angelsindustries and false or true,
      order = "g"
    },
    {
      type = "int-setting",
      name = "angelsaddons-vehicle-cab-energy-transfer-rate-mk1",
      localised_name = {
        "mod-setting-name.angelsaddons-vehicle-cab-energy-transfer-rate",
        {"equipment-name.angels-cab-energy-interface", "MK1"}
      },
      localised_description = {"mod-setting-description.angelsaddons-vehicle-cab-energy-transfer-rate", "500 000"},
      setting_type = "startup",
      minimum_value = 1,
      default_value = 500000, --500 kW
      order = "g-a[transfer-rate]-a[mk1]"
    }
  }
)
