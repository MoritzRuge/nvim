return {
    {
	"neovim/nvim-lspconfig",
	dependencies = {
	    "hrsh7th/cmp-nvim-lsp",
	},
	config = function()
	    -- capabilities für autocomplete
	    local capabilities = require("cmp_nvim_lsp").default_capabilities()
	    
	    -- clangd
	    vim.lsp.config("clangd", {
		capabilities = capabilities,
		cmd = { "clangd" },
		filetypes = { "c", "cpp" },
		root_dir = vim.fs.root(0, { "compile_commands.json", ".git" }),
	    })
	    vim.lsp.enable("clangd")

	    -- typst
	    vim.lsp.config("tinymist", {
		capabilities = capabilities,
		cmd = { "tinymist" },
		filetypes = { "typst" },
		root_dir = vim.fs.root(0, { ".git" }) or vim.fn.getcwd(),
		settings = {
		    exportPdf =  "onSave",
		},
	    })
	    vim.lsp.enable("tinymist")

	    vim.api.nvim_create_user_command("OpenPdf", function()
	    local filepath = vim.api.nvim_buf_get_name(0)
	    if filepath:match("%.typ$") then
		local pdf_path = filepath:gsub("%.typ$", ".pdf")
		-- erst compilieren
		vim.system({ "typst", "compile", filepath })
		-- dann öffnen
		vim.system({ "zathura", pdf_path })
	    else
		print("not a typst files")
	    end
	end, {})
    end,
    },
}
