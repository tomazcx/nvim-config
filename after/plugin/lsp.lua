local lspconfig = require("lspconfig")
local lsp_zero = require('lsp-zero')
local cmp = require("cmp")
local cmp_select = {behavior = cmp.SelectBehavior.Select}
cmp.setup({
	mapping = cmp.mapping.preset.insert({
		['<C-k>'] = cmp.mapping.select_prev_item(cmp_select),
		['<C-j>'] = cmp.mapping.select_next_item(cmp_select),
		['<CR>'] = cmp.mapping.confirm({ select = true }),
		["<C-Space>"] = cmp.mapping.complete(),
	})
})

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({buffer = bufnr})
end)

lspconfig.gopls.setup({
	settings =  {
		gopls = {
			completeUnimported = true
		}
	}
})

require('mason').setup({})
require('mason-lspconfig').setup({
	ensure_installed = {'gopls', 'templ'},
	handlers = {
		lsp_zero.default_setup,
	},
})
