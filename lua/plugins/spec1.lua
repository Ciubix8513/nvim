return {
  -- Colorsheme 
	{"ciubix8513/vim-colorschemes" },
  -- UI
  {"nvim-tree/nvim-tree.lua" },
  { "akinsho/toggleterm.nvim" },
  { "akinsho/bufferline.nvim" },
  { "nvim-tree/nvim-web-devicons"},
  { "nvim-lualine/lualine.nvim"},

 -- Lsp stuff
	{"mason-org/mason.nvim" },
  {"neovim/nvim-lspconfig" , },
  {"mason-org/mason-lspconfig.nvim" },
  {"tamago324/nlsp-settings.nvim" },
  -- Nvim completion
  {
    "folke/lazydev.nvim",
    ft = "lua",
    opts = {
      lirary = {
        -- See the configuration section for more details
        -- Load luvit types when the `vim.uv` word is found
        { path = "${3rd}/luv/library", words = { "vim%.uv" } },
      }
    }
  },

  {"numToStr/Comment.nvim"},
  -- Treesitter (syntax highlighting)
  {"nvim-treesitter/nvim-treesitter"},
  -- Autopairing of things like {, ", ', etc.
  { "windwp/nvim-autopairs", event = "InsertEnter", config = true },
  -- Autocompletion
  { "hrsh7th/nvim-cmp", event = "InsertEnter" },
  { "hrsh7th/cmp-path", event = "InsertEnter" },
  { "hrsh7th/cmp-buffer", event = "InsertEnter" },
  { "hrsh7th/cmp-nvim-lsp", event = "InsertEnter" },
  -- { "hrsh7th/cmp-nvim", event = "InsertEnter" },
  { "L3MON4D3/LuaSnip"},
  { "saadparwaiz1/cmp_luasnip", event = "InsertEnter" },
  {
    "nvimtools/none-ls.nvim",
    dependencies = {
      { "nvim-lua/plenary.nvim" }
    }
  },
  -- Other
  { "lambdalisue/suda.vim" },
  { "wakatime/vim-wakatime" },
}
