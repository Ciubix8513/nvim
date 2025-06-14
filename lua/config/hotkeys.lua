local function MEOW()
  print("MEOWOWO")
end


local function setup_hotkeys()
  local opts = { noremap = true, silent = true }


  vim.g.mapleader = " "

  local n_keybinds = {
    ["<Leader>h"] = ":noh<CR>",
    -- Tab control
    ["<Leader>bb"] = ":BufferLineCyclePrev<CR>",
    ["<Leader>bn"] = ":BufferLineCycleNext<CR>",
    ["<Leader>bh"] = ":BufferLineCloseLeft<CR>",
    ["<Leader>bl"] = ":BufferLineCloseRight<CR>",
    ["<Leader>bj"] = ":BufferLinePick<CR>",
    -- Commenting
    -- Movement between windows
    ["<C-h>"] = ":wincmd h<CR>",
    ["<C-j>"] = ":wincmd j<CR>",
    ["<C-k>"] = ":wincmd k<CR>",
    ["<C-l>"] = ":wincmd l<CR>",
--    ["<Leader>"] = ""
    ["<Leader>e"] = ":NvimTreeToggle<CR>",
  }

  local v_keybinds = {
  }


  -- Set for normal mode
  for i, j in pairs(n_keybinds) do
    vim.keymap.set("n", i, j, opts)
  end

  for i, j in pairs(v_keybinds) do
    vim.keymap.set("v", i, j, opts)
  end

end

return {
  setup_hotkeys = setup_hotkeys
}
