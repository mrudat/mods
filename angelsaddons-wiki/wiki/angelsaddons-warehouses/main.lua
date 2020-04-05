return {
  init = function()
    local prefix = "gui.angelswiki.angelsaddons-warehouses.topic-main-"
    local size = "gui.angelswiki.angelsaddons-warehouses.topic-size"
    local name = "angels-warehouse"
    -- Roundabout way to get inventory size
    local inv_size = game.entity_prototypes[name].get_inventory_size(defines.inventory.chest)

    return {
      name = {prefix .. "title"},
      topic = {
        {type = "title", title = {prefix .. "title"}},
        {type = "subtitle", subtitle = {prefix .. "subtitle"}},
        {type = "text", text = {{size, inv_size}}, localized = false},
        {type = "text", text = {prefix .. "description-1"}},
        {type = "text", text = {prefix .. "description-2"}},
        {type = "image", spritename = "angelswiki-angelsaddons-warehouses-warehouse-1"}
      }
    }
  end
}
