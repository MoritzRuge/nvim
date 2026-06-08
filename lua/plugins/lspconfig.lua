return {
    {
	"neovim/nvim-lspconfig",
	dependencies = {
	    "hrsh7th/cmp-nvim-lsp",
	},
	config = function()
	    -- capabilities für autocomplete
	    local capabilities = require("cmp_nvim_lsp").default_capabilities()

	    vim.lsp.config("clangd", {
		capabilities = capabilities,
		cmd = { "clangd" },
		filetypes = { "c", "cpp" },
		root_dir = vim.fs.root(0, { "compile_commands.json", ".git" }),
	    })

	    vim.lsp.enable("clangd")
	end,
    },
}
