return {
    { --mason lsp installer
	"mason-org/mason.nvim",
	build = ":MasonUpdate",
	opts = {
	    ensure_installed = {
		"lua_ls",
		"tinymist",
	    },
	},
	config = function(_, opts)
	    require("mason").setup(opts)
	end,
    },

    { -- mason - lapconfig bridge
	"mason-org/mason-lspconfig.nvim",
	opts = {},
    },
}
