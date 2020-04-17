local function item_to_name_with_icon(name, item_type)
  item_type = item_type or "item"

  return {"", "[" .. item_type .. "=" .. name .. "]", {item_type .. "-name." .. name}}
end
local function list_to_string(list, item_amount)
  local count = table_size(list)
  local result = {""}
  item_amount = item_amount or false

  for i, item in pairs(list) do
    if item_amount then
      if item.min_amount and item.max_amount then
        table.insert(result, item.min_amount .. "-" .. item.max_amount .. " ")
      elseif item.probability then
        table.insert(result, item.probability .. "% ")
        if item.amount > 1 then
          table.insert(result, item.amount .. " ")
        end
      else
        table.insert(result, item.amount .. " ")
      end
    end
    table.insert(result, "[" .. item.type .. "=" .. item.name .. "]")
    table.insert(result, {item.type .. "-name." .. item.name})

    if i < count - 1 then
      table.insert(result, ", ")
    elseif i == count - 1 then
      table.insert(result, {"gui.angelswiki.and"})
    end
  end
  return result
end
local utility = {}
function utility.products_from_recipe(recipe_name, item_amount)
  local recipe = game.recipe_prototypes[recipe_name]
  if not recipe then
    return {""}
  end
  return list_to_string(recipe.products, item_amount)
end
function utility.ingredients_from_recipe(recipe_name, item_amount)
  local recipe = game.recipe_prototypes[recipe_name]
  if not recipe then
    return {""}
  end
  return list_to_string(recipe.ingredients, item_amount)
end
function utility.name_to_icon_and_name(name, item_type)
  return item_to_name_with_icon(name, item_type)
end
function utility.is_petro()
  return game.active_mods.angelspetrochem
end
function utility.is_overhaul()
  return game.active_mods.bobplates or
    (game.active_mods.angelsindustries and settings.startup["angels-enable-industries"].value)
end
function utility.is_special_vanilla()
  return not utility.is_petro() and not utility.is_overhaul()
end

return utility
