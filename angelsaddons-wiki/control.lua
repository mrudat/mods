local threads = {}
local function addThread(mod, thread)
  if thread  and table_size(thread) > 0 then
    threads[mod] = thread
  end
end

addThread("angelsaddons-cab", require("wiki.angelsaddons-cab"))
addThread("angelsaddons-warehouses", require("wiki.angelsaddons-warehouses"))

local function registerThread()
  if remote.interfaces["Booktorio"] then
    for mod, thread in pairs(threads) do
      if game.active_mods[mod] then
        -- process ingame data
        for i, topic in pairs(thread.topics) do
          if topic.init then
            thread.topics[i] = topic.init()
          end
        end
        remote.call("Booktorio", "add_thread", thread)
      end
    end
  end
end

-- Suggested events where register/add the new thread
script.on_init(registerThread)
script.on_configuration_changed(registerThread)
