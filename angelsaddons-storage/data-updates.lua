if angelsmods and angelsmods.refining then
  if angelsmods.addons.storage.oresilos then
    angelsmods.functions.OV.add_prereq("ore-silos", "ore-crushing")
    data.raw["item-subgroup"]["angels-silos"].group = "resource-refining"
    if angelsmods.logistics then
      data.raw["item-subgroup"]["angels-silos"].group = "angels-logistics"
    end
  end

  if angelsmods.addons.storage.warehouses then
    data.raw["item-subgroup"]["angels-warehouses"].group = "resource-refining"

    if angelsmods.logistics then
      data.raw["item-subgroup"]["angels-warehouses"].group = "angels-logistics"
    end
  end
end

if angelsmods.industries then
  if angelsmods.addons.oresilos then
    data:extend(
      {
        {
          type = "item-subgroup",
          name = "angels-silo",
          group = "angels-logistics",
          order = "ac[chests-silo]"
        }
      }
    )
    data.raw["item"]["silo"].subgroup = "angels-silo"
    data.raw["item"]["silo-active-provider"].subgroup = "angels-silo"
    data.raw["item"]["silo-passive-provider"].subgroup = "angels-silo"
    data.raw["item"]["silo-requester"].subgroup = "angels-silo"
    data.raw["item"]["silo-storage"].subgroup = "angels-silo"
    data.raw["item"]["silo-buffer"].subgroup = "angels-silo"
  end

  if angelsmods.addons.warehouses then
    data.raw["item-subgroup"]["angels-warehouses"].group = "angels-logistics"
    data.raw["item-subgroup"]["angels-warehouses"].order = "ad[chests-warehouse]"
  end
end
