return {
  "nvim-telescope/telescope.nvim",
  tag = '0.1.8',
  dependencies = {
    'nvim-lua/plenary.nvim',
    "nvim-telescope/telescope-ui-select.nvim"
  },
  config = require("zen.configs.telescope").setup,
}
