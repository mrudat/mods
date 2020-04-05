return {
  init = function()
    local prefix = "gui.angelswiki.angelsbioprocessing.topic-main-"
    local name = ""
    -- Roundabout way to get inventory size
    -- local inv_size = game.entity_prototypes[name].get_inventory_size(defines.inventory.chest)

    return {
      name = {prefix .. "title"},
      topic = {
        {type = "title", title = {prefix .. "title"}},
        {type = "subtitle", subtitle = {prefix .. "subtitle-1"}},
        {type = "text", text = {prefix .. "description-1"}},
        {type = "subtitle", subtitle = {prefix .. "subtitle-2"}},
        {type = "text", text = {prefix .. "description-2"}},
      }
    }
  end
}
