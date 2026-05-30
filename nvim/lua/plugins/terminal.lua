return {
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    keys = {
      { "<C-`>", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Toggle terminal" },
    },
    opts = {
      size = 15,
      direction = "horizontal",
      persist_size = true,
      close_on_exit = true,
    },
  },
}
