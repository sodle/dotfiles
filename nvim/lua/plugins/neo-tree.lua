return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    opts = {
      filesystem = {
        filtered_items = {
          visible = true,       -- show filtered items dimmed rather than hidden
          hide_dotfiles = false,
          hide_gitignored = true,
          hide_hidden = false,
        },
      },
    },
  },
}
