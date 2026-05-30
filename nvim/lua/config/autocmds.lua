-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

-- Save all modified buffers when Neovim loses focus or a window is left
vim.api.nvim_create_autocmd({ "FocusLost", "WinLeave" }, {
  pattern = "*",
  callback = function()
    vim.cmd("silent! wall")
  end,
})

-- Save all modified buffers every 60 seconds
local autosave_timer = vim.uv.new_timer()
autosave_timer:start(60000, 60000, vim.schedule_wrap(function()
  vim.cmd("silent! wall")
end))
