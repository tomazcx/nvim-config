vim.api.nvim_set_keymap('n', ':', '<cmd>FineCmdline<CR>', { noremap = true })
require("fine-cmdline").setup({
	popup = {
		border = {
			text = {
				top = "Command Line",
				top_align = "center",
			},
		},
	}
})
