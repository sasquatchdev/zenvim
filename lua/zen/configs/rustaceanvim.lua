local M = {};

M.setup = function()
  vim.g.rustaceanvim = {
    server = {
      capabilities = require("zen.configs.lspconfig").capabilities(),
      on_attach = require("zen.configs.lspconfig").on_attach,
    },
    tools = {
      hover_actions = {
        auto_focus = true
      }
    }
  }
end

return M;
