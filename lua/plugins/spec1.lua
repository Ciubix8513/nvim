return {
  -- Colorsheme 
	{"ciubix8513/vim-colorschemes" },
  {"nvim-tree/nvim-tree.lua" },

  -- Lsp stuff
	{"mason-org/mason.nvim" },
  {"neovim/nvim-lspconfig" },
  {"mason-org/mason-lspconfig.nvim" },
  {"tamago324/nlsp-settings.nvim" },

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
  { "lambdalisue/suda.vim" },
  { "wakatime/vim-wakatime" },
  { "akinsho/toggleterm.nvim" }
}
