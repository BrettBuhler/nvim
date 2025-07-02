-- ~/.config/nvim/init.lua
vim.opt.number = true
-- Or if you prefer:
-- vim.o.number = true

-- Your other configuration should go below this line
require("config.options")
require("config.keybindings")
require("config.lazy")
require("plugins.colors")
