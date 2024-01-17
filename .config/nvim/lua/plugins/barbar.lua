return {
	{
		"romgrk/barbar.nvim",
		dependencies = {
			"lewis6991/gitsigns.nvim",
			"nvim-tree/nvim-web-devicons",
		},
		init = function()
			vim.g.barbar_auto_setup = false
		end,
		opts = {
			vim.keymap.set("n", "<A-1>", "<cmd>BufferGoto 1<CR>", {}),
			vim.keymap.set("n", "<A-2>", "<cmd>BufferGoto 2<CR>", {}),
			vim.keymap.set("n", "<A-3>", "<cmd>BufferGoto 3<CR>", {}),
			vim.keymap.set("n", "<A-4>", "<cmd>BufferGoto 4<CR>", {}),
			vim.keymap.set("n", "<A-5>", "<cmd>BufferGoto 5<CR>", {}),
			vim.keymap.set("n", "<A-6>", "<cmd>BufferGoto 6<CR>", {}),
			vim.keymap.set("n", "<A-7>", "<cmd>BufferGoto 7<CR>", {}),
			vim.keymap.set("n", "<A-8>", "<cmd>BufferGoto 8<CR>", {}),
			vim.keymap.set("n", "<A-9>", "<cmd>BufferGoto 9<CR>", {}),
			vim.keymap.set("n", "<A-c>", "<cmd>BufferClose<CR>", {}),
			vim.keymap.set("n", "<A-r>", "<cmd>BufferRestore<CR>", {}),
			animation = false,
			-- insert_at_start = true,
			-- …etc.
		},
	},
}
