local M = {};

M.on_attach = function(_, bufnr)
  local opts = { buffer = bufnr };
  vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
  vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
  vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
  vim.keymap.set("n", "<Leader>ca", vim.lsp.buf.code_action, opts)
  vim.keymap.set("n", "<Leader>rn", vim.lsp.buf.rename, opts)
  vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
end

M.border = function() return {
  ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" }),
  ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" })
} end

M.capabilities = require("cmp_nvim_lsp").default_capabilities

M.default = function() return {
  on_attach = M.on_attach,
  capabilities = M.capabilities(),
  handlers = M.border(),
} end

M.handlers = {
  function(name)
    require("lspconfig")[name].setup(M.default())
  end,

  ["rust_analyzer"] = function() end
}

M.setup = function()
  require("mason").setup()
  require("mason-lspconfig").setup()
  require("mason-lspconfig").setup_handlers(M.handlers)
end

return M;
