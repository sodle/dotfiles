-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
vim.opt.termguicolors = true

vim.g.python3_host_prog = "~/.pyenv/versions/nvim/bin/python"
vim.g.loaded_perl_provider = 0

lvim.leader = ","

lvim.plugins = {
  {
    "hedyhli/outline.nvim",
    cmd = { "Outline", "OutlineOpen" },
    keys = {
      { "<leader>o", "<cmd>Outline<CR>", desc = "Toggle outline" },
    },
    opts = {
      keymaps = {
        goto_location = { "<CR>", "<LeftRelease>" },
      }
    },
  },
  {
    "nvimdev/guard.nvim",
    dependencies = {
      "nvimdev/guard-collection",
    }
  },
}

lvim.builtin.nvimtree.setup.view.width = 37

local function open_nvim_tree()
  require("nvim-tree.api").tree.open()
end
vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })

local ft = require('guard.filetype')

ft('python'):fmt('black')
    :lint('pylint')

require('guard').setup({
  -- fmt_on_save = true,
  -- lsp_as_default_formatter = true,
})
