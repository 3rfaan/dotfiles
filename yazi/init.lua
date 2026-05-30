-- Bunny
require("bunny"):setup({
  hops = {
    { key = "/", path = "/",            desc = "Root directory" },
    { key = "c", path = "~/.config",    desc = "Config files" },
    { key = "l", path = "~/.local",     desc = "Local files" },
    { key = "g", path = "~/git",        desc = "Git repos" },
    { key = "p", path = "~/playground", desc = "Playground" },
  },
  desc_strategy = "path", -- If desc isn't present, use "path" or "filename", default is "path"
  ephemeral = true,       -- Enable ephemeral hops, default is true
  tabs = true,            -- Enable tab hops, default is true
  notify = false,         -- Notify after hopping, default is false
  fuzzy_cmd = "fzf",      -- Fuzzy searching command, default is "fzf"
})
