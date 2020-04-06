local prefix = "gui.angelswiki.topic-main"
local contrib = require("wiki.angelsaddons-wiki.main-contributions")

return {
  name = {prefix .. "-title"},
  topic = {
    {type = "title", title = {prefix .. "-title"}},
    {type = "subtitle", subtitle = {prefix .. "-subtitle-1"}},
    {type = "text", text = {prefix .. "-description-1"}},
    {type = "subtitle", subtitle = {prefix .. "-subtitle-2"}},
    {
      type = "text",
      text = {{"", {prefix .. "-description-2"}, "\n\n", table.concat(contrib, "\n")}},
      localized = false
    }
  }
}
