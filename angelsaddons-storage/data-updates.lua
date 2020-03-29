if angelsmods.refining then
  local group = "resource-refining"
  if angelsmods.industries then
    group = "angels-logistics"
  end

  if angelsmods.addons.storage.oresilos then
    angelsmods.functions.OV.add_prereq("ore-silos", "ore-crushing")
    data.raw["item-subgroup"]["angels-silos"].group = group
    if angelsmods.industries then
      data.raw["item-subgroup"]["angels-silos"].order = "ac[chests-silo]"
    end
  end

  if angelsmods.addons.storage.warehouses then
    data.raw["item-subgroup"]["angels-warehouses"].group = group
    if angelsmods.industries then
      data.raw["item-subgroup"]["angels-warehouses"].order = "ad[chests-warehouse]"
    end
  end
end

--OVERRIDE FOR ANGELS
-- PETROCHEM
if angelsmods.petrochem then
  data.raw["item"]["angels-pressure-tank-1"].subgroup = "angels-fluid-tanks"
  data.raw["item"]["angels-pressure-tank-1"].order = "e-" .. data.raw["item"]["angels-pressure-tank-1"].order
  data.raw["technology"]["pressure-tanks"].prerequisites = {"angels-fluid-control"}

  if bobmods and bobmods.logistics then
    data.raw["item"]["angels-pressure-tank-1"].order = "c[large-tank]-d[jax35]"
  end
end
