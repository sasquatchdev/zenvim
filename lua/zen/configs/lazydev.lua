local M = {};

M.opts = {
  library = {
    { path = "luvit-meta/library", words = { "vim%.uv" } }
  }
}

M.setup = function()
  require("lazydev").setup(M.opts)
end

return M;
