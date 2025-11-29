return {
  { "williamboman/mason.nvim", config = true },

  {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = {
        "lua_ls",
        "rust_analyzer",
        "omnisharp",
        "clangd",
        "pyright",
        "html",
        "cssls",
        "jsonls",
        "eslint",
        "bashls",
        "jdtls",
        "ts_ls",
        "marksman"
      },
      automatic_installation = true,

      handlers = {
        function(server_name)                     -- default handler
          require("lspconfig")[server_name].setup({})
        end,

        omnisharp = function()
          require("lspconfig").omnisharp.setup({
            cmd = { "omnisharp", "--languageserver", "--host" },
          })
        end,

        clangd = function()
          require("lspconfig").clangd.setup({
            cmd = { "clangd", "--background-index" },
          })
        end,
      },
    },
  },

  { "neovim/nvim-lspconfig" },

  {
    "hrsh7th/nvim-cmp",
  },
}
