local utility = require("utility")

return {
  init = function()
    local prefix = "gui.angelswiki.angelsrefining.topic-ore-sorting-"
    local is_petro = utility.is_petro() and settings.startup["angels-enable-acids"].value or false
    local is_overhaul = utility.is_overhaul()
    local is_special_vanilla = utility.is_special_vanilla()

    local function add_recipe(list, recipe)
      if recipe then
        table.insert(
          list,
          {
            prefix .. "inout",
            recipe.localised_name,
            {"", recipe.products[1].amount, " ", utility.name_to_icon_and_name(recipe.products[1].name)},
            {"", recipe.ingredients[1].amount, " ", utility.name_to_icon_and_name(recipe.ingredients[1].name)}
          }
        )
      end
    end
    local rec_prot = game.recipe_prototypes

    local description1 = {prefix .. "description1"}
    local description_insert = {""}
    if is_special_vanilla then
      table.insert(description1, {prefix .. "description1-special"})
    elseif is_overhaul then
      table.insert(description1, {prefix .. "description1-industries"})
    end
    add_recipe(description_insert, rec_prot["angelsore1-crushed-smelting"])
    if is_special_vanilla then
      add_recipe(description_insert, rec_prot["angels-iron-pebbles-smelting"])
      add_recipe(description_insert, rec_prot["angels-iron-nugget-smelting"])
    elseif is_overhaul then
      add_recipe(description_insert, rec_prot["angelsore2-crushed-smelting"])
      add_recipe(description_insert, rec_prot["angelsore5-crushed-smelting"])
    end
    add_recipe(description_insert, rec_prot["iron-plate"])

    add_recipe(description_insert, rec_prot["angelsore3-crushed-smelting"])
    if is_special_vanilla then
      add_recipe(description_insert, rec_prot["angels-copper-pebbles-smelting"])
      add_recipe(description_insert, rec_prot["angels-copper-nugget-smelting"])
    end
    add_recipe(description_insert, rec_prot["copper-plate"])

    table.insert(description1, description_insert)

    return {
      name = {prefix .. "title"},
      topic = {
        {type = "title", title = {prefix .. "title"}},
        {type = "text", text = {description1}, localized = false}
      }
    }
  end
}
