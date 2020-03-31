local energyInterfaceName = "angels-cab-energy-interface%s"

data:extend {
  {
    type = "technology",
    name = "angels-cab",
    icon = "__angelsaddons-vehicles__/graphics/technology/cab.png",
    icon_size = 128,
    prerequisites = {
      "automobilism",
      "electric-energy-distribution-1"
    },
    effects = {
      {
        type = "unlock-recipe",
        recipe = "angels-cab"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-cab-deploy-charge"
      },
      {
        type = "unlock-recipe",
        recipe = "angels-cab-undeploy-charge"
      },
      {
        type = "unlock-recipe",
        recipe = string.format(energyInterfaceName, "-mk1")
      }
    },
    unit = {
      count = 60,
      ingredients = {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1}
      },
      time = 15
    },
    order = "c-a"
  }
}
