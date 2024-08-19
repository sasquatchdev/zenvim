return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = require("zen.configs.catppuccin").opts,
  config = require("zen.configs.catppuccin").setup
}
