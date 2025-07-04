-- ~/.config/nvim/init.lua
vim.opt.number = true
-- Or if you prefer:
-- vim.o.number = true

-- Your other configuration should go below this line
require("config.options")
require("config.keybindings")
require("config.lazy")
require("plugins.colors")

-- Command to yank the entire content of a buffer to the clipboard
local function yank_current_buffer_to_clipboard()
    local lines = vim.api.nvim_buf_get_lines(0, 0, -1, false)
    local content = table.concat(lines, '\n')
    vim.fn.setreg('+', content)
    vim.notify("Copied buffer content to clipboard.", vim.log.levels.INFO)
end

vim.api.nvim_create_user_command(
    'YankBuffer',
    yank_current_buffer_to_clipboard,
    { desc = 'Yank content of the current buffer to the clipboard' }
)
