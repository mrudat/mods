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

local utility = {
  products_from_recipe = function(recipe_name, item_amount)
    local recipe = game.recipe_prototypes[recipe_name]
    if not recipe then
      return {""}
    end
    return list_to_string(recipe.products, item_amount)
  end,
  ingredients_from_recipe = function(recipe_name, item_amount)
    local recipe = game.recipe_prototypes[recipe_name]
    if not recipe then
      return {""}
    end
    return list_to_string(recipe.ingredients, item_amount)
  end
}

return utility
