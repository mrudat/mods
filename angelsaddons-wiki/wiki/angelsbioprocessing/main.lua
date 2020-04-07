local prefix = "gui.angelswiki.angelsbioprocessing.topic-main-"
return {
  name = {prefix .. "title"},
  topic = {
    {type = "title", title = {prefix .. "title"}},
    {type = "subtitle", subtitle = {prefix .. "subtitle-1"}},
    {type = "text", text = {prefix .. "description-1"}},
    {type = "subtitle", subtitle = {prefix .. "subtitle-2"}},
    {type = "text", text = {prefix .. "description-2"}}
  }
}
