local utility = require("utility")
return {
  init = function()
    local prefix = "gui.angelswiki.angelsrefining.topic-main-"
    local function get_line_from_name(name, item_type, before)
      before = before or "- "
      item_type = item_type or "item"
      local prototype = game["entity_prototypes"][name]
      return {"", before .. "[" .. item_type .. "=" .. prototype.name .. "] ", prototype.localised_name, "\n"}
    end

    local items = {
      "",
      get_line_from_name("angels-ore1"),
      get_line_from_name("angels-ore3"),
      get_line_from_name("angels-ore4"),
      get_line_from_name("angels-ore2")
    }

    if (utility.is_overhaul()) then
      table.insert(items, get_line_from_name("angels-ore6"))
      table.insert(items, get_line_from_name("angels-ore5"))
    end

    return {
      name = {prefix .. "title"},
      topic = {
        {type = "title", title = {prefix .. "title"}},
        {
          type = "text",
          text = {{prefix .. "description-1", items, get_line_from_name("angels-fissure", "entity", "")}},
          localized = false
        }
      }
    }
  end
}
