local M = {};

M.opts = {
  default_file_explorer = true,
  skip_confirm_for_simple_edits = true,
  constrain_cursor = "name",
  view_options = {
    show_hidden = false,
    case_insensitive = true,
  }
}

M.setup = function(_, opts)
  require("oil").setup(opts)
  vim.keymap.set("n", "-", ":Oil<CR>", {})
end

return M;
