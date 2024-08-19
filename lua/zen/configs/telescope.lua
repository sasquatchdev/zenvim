local M = {};

M.opts = {
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown({})
    }
  }
}

M.setup = function()
  require("telescope").setup(M.opts)
  require("telescope").load_extension("ui-select")

  local builtin = require("telescope.builtin");
  local o = { silent = true };
  vim.keymap.set("n", "<Leader>ff", builtin.find_files, o)
  vim.keymap.set("n", "<Leader>fg", builtin.live_grep, o)
  vim.keymap.set("n", "<Leader>fb", builtin.buffers, o)
end

return M;
