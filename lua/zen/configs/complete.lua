local M = {};

M.opts = function()
  local cmp = require("cmp")
  local lspkind = require("lspkind")
  return {
    snippet = {
      expand = function(args)
        require('luasnip').lsp_expand(args.body) -- enables luasnip expansion
      end,
    },
    window = {
      completion = cmp.config.window.bordered(),
      documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
      ['<C-b>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),
      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = false }), -- only confirm if you select an item using  or 
    }),
    sources = cmp.config.sources({
      { name = 'nvim_lsp' },
      { name = 'luasnip' }, -- enables luasnip source
      { name = "lazydev", group_index = 0 }
    }, {
      { name = 'buffer' },
    }),
    formatting = {
      format = lspkind.cmp_format {
        mode = "symbol",
        maxwidth = 50,
        ellipsis_char = "...",
        show_labelDetails = true,
      }
    }
  };
end

M.setup = function()
  local cmp = require("cmp")
  cmp.setup(M.opts())

  cmp.setup.cmdline({ "/", "?" }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = {
      { name = "buffer" }
    }
  })

  cmp.setup.cmdline({ ":" }, {
    mapping = cmp.mapping.preset.cmdline(),
    sources = cmp.config.sources({
      { name = "path" },
    }, {
      { name = "cmdline" },
    }),
    matching = {
      disallow_symbol_noprefix_matching = false,
    }
  })
end

return M;
