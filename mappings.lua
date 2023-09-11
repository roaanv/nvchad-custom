---@type MappingsConfig
local M = {}

M.general = {
  n = {
    ["<C-w>"] = { "<cmd> bd <CR>", "close file" },
    ["<leader>gg"] = { "<cmd> !golines . -w <CR>", "run golines" },
    ["<leader>bb"] = { "<cmd> !black . <CR>", "run black" },
    ["<S-C-q>"] = {"<cmd> Telescope buffers <CR>", "Find buffers"},
  },
}

return M
