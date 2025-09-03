vim.pack.add({
	{
		src = 'https://github.com/nvim-neo-tree/neo-tree.nvim',
		version = vim.version.range('3')
		-- dependencies
		-- 'nvim-lua/plenary.nvim',
		-- "MunifTanjim/nui.nvim",
		-- optional, but recommended
		-- "nvim-tree/nvim-web-devicons",
	},
	{
		src = "https://github.com/nvim-lua/plenary.nvim",
	},
	{
		src = "https://github.com/MunifTanjim/nui.nvim",
	},
	{
		src =  "https://github.com/nvim-tree/nvim-web-devicons",
	},
	{
		src = "https://github.com/tpope/vim-surround",
	},
	{
		src = "https://github.com/nvim-treesitter/nvim-treesitter",
		branch = "main",
	},
	{
		src = "https://github.com/folke/tokyonight.nvim",
	},
})

require("nvim-treesitter.configs").setup({
	highlight = {
		enable = true,
	},
})

require("tokyonight").setup({
	style = "storm",
})

vim.cmd[[colorscheme tokyonight]]

-- vim.api.nvim_set_keymap("n", "/", ":Neotree toggle current reveal_force_cwd<cr>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "|", ":Neotree toggle<cr>", { noremap = true, silent = true})

vim.o.relativenumber = true
