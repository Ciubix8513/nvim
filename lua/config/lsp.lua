local function set_up_lsps() 
  require("nvim-treesitter").setup({
    auto_install = true,
    highlight = {
      enable = true,
    }
  })

  require("Comment").setup({
    toggler = {
      line = "<Leader>/"
    },
    opleader = {
      line = "<Leader>/"
    },
  })

  vim.lsp.enable("luau-lsp")
  vim.lsp.config("luau-lsp", {
    filetypes = { "lua" },
    settings  = {
      ["luau-lsp"] = {},
    },
  })
end

local function setup_cmp() 
  require("cmp").setup( {
    sources = {
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
