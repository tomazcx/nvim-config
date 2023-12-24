-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set termguicolors to enable highlight groups
vim.opt.termguicolors = true

local function opts(desc)
  return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
end

function my_on_attach(bufnr)
	local api = require "nvim-tree.api"
	api.config.mappings.default_on_attach(bufnr)
	vim.keymap.set("n", "<Space>pv", api.tree.toggle, opts("Toggle nvim-tree"))
end

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 30,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = false,
  },
  on_attach = my_on_attach,
})


