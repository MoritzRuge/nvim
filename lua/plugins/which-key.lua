return {
    {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
	},
	keys = {
	    config = function()
		local wk = require("which-key")

		wk.add({
		    { "<leader>t", group = "Typst" }, -- group name
		    { "<leader>tc", "<cmd>TypstCompile<CR>", desc = "Typst Compile" },
		    { "<leader>tp", "<cmd>TypstPreview<CR>", desc = "Typst Preview" },
		    { "<leader>tw", "<cmd>TypstWatch<CR>", desc = "Typst Watch" },
		})
	    end,
	    desc = "Typst",
	},
    },
}
