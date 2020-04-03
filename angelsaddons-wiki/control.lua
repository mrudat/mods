local threads = {}
local function addThread(mod, thread)
  if thread then
    table.insert(threads, {mod = mod, thread = thread})
  end
end

addThread("angelsaddons-cab", require("wiki.angelsaddons-cab"))
addThread("angelsaddons-warehouses", require("wiki.angelsaddons-warehouses"))

local function registerThread()
  if remote.interfaces["Booktorio"] then
    for _, thread in pairs(threads) do
      if game.active_mods[thread.mod] then
        remote.call("Booktorio", "add_thread", thread.thread)
      end
    end
  end
end

-- Suggested events where register/add the new thread
script.on_init(registerThread)
script.on_configuration_changed(registerThread)
