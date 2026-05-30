return {
  -- Disable pyright/basedpyright shipped by the lang.python extra
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        pyright = { enabled = false },
        basedpyright = { enabled = false },
        -- ruff: linting + formatting + code actions (install via mason)
        ruff = {
          mason = true,
        },
        -- ty: type checking + hover + go-to-def
        -- Install externally: uv tool install ty
        ty = {
          mason = false,
          cmd = { "ty", "server" },
        },
      },
    },
  },
  -- Use ruff for Python formatting via conform.nvim
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        python = { "ruff_format", "ruff_organize_imports" },
      },
    },
  },
}
