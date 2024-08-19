return {
  "neovim/nvim-lspconfig",
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "folke/lazydev.nvim",
    "onsails/lspkind.nvim",
    "ray-x/lsp_signature.nvim",
  },
  config = require("zen.configs.lspconfig").setup,
}
