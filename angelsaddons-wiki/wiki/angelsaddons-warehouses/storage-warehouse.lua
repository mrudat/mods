return {
  init = function()
    local prefix = "gui.angelswiki.angelsaddons-warehouses.topic-storage-"
    local size = "gui.angelswiki.angelsaddons-warehouses.topic-size"
    local generic = "gui.angelswiki.angelsaddons-warehouses.topic-generic-"

    local name = "angels-warehouse-storage"
    local prototype = game.entity_prototypes[name]
    local inv_size = prototype.get_inventory_size(defines.inventory.chest)
    local title = {generic .. "title", "[item=" .. prototype.name .. "]", prototype.localised_name}

    return {
      name = {title},
      localized = false,
      topic = {
        {type = "title", title = {title}, localized = false},
        {type = "subtitle", subtitle = {prefix .. "subtitle"}},
        {type = "text", text = {{size, inv_size}}, localized = false},
        {type = "text", text = {prefix .. "description-1"}}
      }
    }
  end
}
