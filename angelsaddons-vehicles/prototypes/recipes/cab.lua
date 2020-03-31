local energyInterfaceName = "angels-cab-energy-interface%s"

data:extend(
  {
    {
      type = "recipe",
      name = "angels-cab",
      energy_required = 10,
      enabled = false,
      ingredients = {
        {"engine-unit", 20},
        {"steel-plate", 75},
        {"electronic-circuit", 20},
        {"iron-gear-wheel", 25}
      },
      result = "angels-cab"
    },
    {
      type = "recipe",
      name = "angels-cab-deploy-charge",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"iron-plate", 1},
        {"steel-plate", 1},
        {"electronic-circuit", 1},
        {"iron-gear-wheel", 1}
      },
      result = "angels-cab-deploy-charge"
    },
    {
      type = "recipe",
      name = "angels-cab-undeploy-charge",
      energy_required = 5,
      enabled = false,
      ingredients = {
        {"iron-plate", 1},
        {"steel-plate", 1},
        {"electronic-circuit", 1},
        {"iron-gear-wheel", 1}
      },
      result = "angels-cab-undeploy-charge"
    },
    {
      type = "recipe",
      name = string.format(energyInterfaceName, "-mk1"),
      energy_required = 10,
      enabled = false,
      ingredients = {
        {"medium-electric-pole", 1},
        {"red-wire", 10},
        {"green-wire", 10},
        {"electronic-circuit", 20}
      },
      result = string.format(energyInterfaceName, "-mk1")
    }
  }
)
