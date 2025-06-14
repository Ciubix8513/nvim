local function set_up_lsps()
  require("nvim-treesitter").setup({
    auto_install = true,
    highlight = {
      enable = true,
    }
  })

  require("nvim-autopairs").setup()

  require("Comment").setup({
    toggler = {
      line = "<Leader>/"
    },
    opleader = {
      line = "<Leader>/"
    },
  })

  local capabilities = require("cmp_nvim_lsp").default_capabilities()

  require("mason-lspconfig").setup()
  require("null-ls").setup()

  vim.lsp.enable("lua-ls")
  vim.lsp.config("lua-ls", {
    capabilities = capabilities,
    settings = {
      ['lua-ls'] = {},
    }
  })

end


local function setup_cmp()
  local cmp = require("cmp")

  cmp.setup( {
     window = {
       completion = cmp.config.window.bordered(),
       documentation = cmp.config.window.bordered(),
     },
     mapping = cmp.mapping.preset.insert({
      ['<C-d>'] = cmp.mapping.scroll_docs(-4),
      ['<C-f>'] = cmp.mapping.scroll_docs(4),


      ['<C-Space>'] = cmp.mapping.complete(),
      ['<C-e>'] = cmp.mapping.abort(),
      ['<CR>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
    }),
    sources = {
      { name = "lazydev" },
      { name = "luasnip"},
      { name = "nvim_lsp"},
      { name = "buffer"},
      { name = "path"},
    }
  })
end


return {
  set_up_lsps = set_up_lsps,
  setup_cmp = setup_cmp,
}
