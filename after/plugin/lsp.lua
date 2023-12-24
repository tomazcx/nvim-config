local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
	-- see :help lsp-zero-keybindings
	-- to learn the available actions
	lsp_zero.default_keymaps({buffer = bufnr})
end)

require("lspconfig").gopls.setup({
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
