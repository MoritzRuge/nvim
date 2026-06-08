return {
    {
	'nvim-treesitter/nvim-treesitter',
	lazy = false,
	build = ':TSUpdate',
	config = function()
	    local configs = require("nvim-treesitter")
	    configs.setup({
		highlight = {
		    enable = true,
		},
		indent = { enable = true },
		autotage = { enable = true },
		auto_install = false,
		install_dir = vim.fn.stdpath('data') .. '/site',
	    })
	    configs.install{
		"c",
		"lua",
		"rust",
		"scala",
	    }
	end,
    },
}
