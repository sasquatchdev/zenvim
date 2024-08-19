return {
  "folke/lazydev.nvim",
  dependencies = {
    { "Bilal2453/luvit-meta", lazy = true }
  },
  config = require("zen.configs.lazydev").setup
}
