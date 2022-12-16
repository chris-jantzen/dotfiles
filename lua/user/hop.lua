local M = {}
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

M.config = function()
    local status_ok, hop = pcall(require, "hop")
    if not status_ok then
        return
    end
    hop.setup()
    require("user.remap").set_hop_keymaps()
end

return M
