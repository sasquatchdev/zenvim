local M = {};

M.opts = {
  flavour = "frappe",
  transparent_background = true,
}

M.setup = function(_, opts)
  require("catppuccin").setup(opts)
  vim.cmd.colorscheme("catppuccin")
end

return M;
