local utility = require("utility")

return {
  init = function()
    local prefix = "gui.angelswiki.angelsrefining.topic-ore-refining-"
    local is_petro = game.active_mods.angelspetrochem and settings.startup["angels-enable-acids"].value or false
    local is_overhaul =
      game.active_mods.bobplates or
      (game.active_mods.angelsindustries and settings.startup["angels-enable-industries"].value)

    local description_insert = {""}
    if is_petro then
      table.insert(description_insert, {prefix .. "description-3-petrochem"})
      table.insert(description_insert, ", ")
      table.insert(
        description_insert,
        {
          prefix .. "description-3-not-used",
          utility.name_to_icon_and_name("angels-ore4"),
          utility.name_to_icon_and_name("liquid-hydrochloric-acid", "fluid")
        }
      )
      table.insert(description_insert, ".")
    else
      table.insert(description_insert, {prefix .. "description-3-default"})
    end

    local description3 = {prefix .. "description-3", description_insert}

    return {
      name = {prefix .. "title"},
      topic = {
        {type = "title", title = {prefix .. "title"}},
        {type = "text", text = {prefix .. "description"}},
        {type = "image", spritename = "angelswiki-refining-waterprocessing-and-chains"},
        {type = "subtitle", subtitle = {prefix .. "subtitle-1"}},
        {type = "text", text = {prefix .. "description-1"}},
        {type = "image", spritename = "angelswiki-refining-crushing"},
        {type = "text", text = {prefix .. "description-1-notes"}},
        {type = "subtitle", subtitle = {prefix .. "subtitle-2"}},
        {type = "text", text = {prefix .. "description-2"}},
        {type = "image", spritename = "angelswiki-refining-flotation"},
        {type = "text", text = {prefix .. "description-2-notes"}},
        {type = "subtitle", subtitle = {prefix .. "subtitle-3"}},
        {type = "text", text = {description3}, localized = false},
        {type = "image", spritename = "angelswiki-refining-flotation"},
        {type = "text", text = {prefix .. "description-3-notes"}},
        {type = "subtitle", subtitle = {prefix .. "subtitle-4"}},
        {type = "text", text = {description3}, localized = false},
        {type = "image", spritename = "angelswiki-refining-flotation"}
      }
    }
  end
}
