return {
	lsps = {
		pyright = {},
	},
	eslint = {},
	formatters = {
		black = {},
		stylua = {},
	},
	treesitter = "all",
	flags = {
		format_on_save = true,
	},
	mappings = {
		custom = {
			["grr"] = {
				"<cmd>lua require'nvim-treesitter-refactor.smart_rename'.smart_rename(5)<cr>",
				"Rename in file",
			},
			["grR"] = { "<cmd>lua require'spectre'.open_visual({ select_word = true })<cr>", "Rename in project" },
			["<m-e>"] = { "<cmd>NvimTreeToggle<cr>", "Toggle NvimTree" },
			["<m-g>"] = { "<cmd>lua _LAZYGIT_TOGGLE()<cr>", "Toggle Lazygit window" },
			["|"] = { "<cmd>vsplit<cr>", "Create a new vertical window" },
			["-"] = { "<cmd>split<cr>", "Create a new horizontal window" },
			["<leader>vl"] = { "<cmd>VimtexCompile<cr>", "Compile current TeX file" },
			["<leader>vv"] = { "<cmd>VimtexView<cr>", "View current TeX file" },
			["<c-j>"] = { "<c-n>", "Navigate to next on autocomplete", mode = { "i" }, remap = true },
			["<c-k>"] = { "<c-p>", "Navigate to previous on autocomplete", mode = { "i" }, remap = true },
			["<m-p>"] = { "<plug>(VM-Add-Cursor-Up)", "Add a new cursor up" },
			["<m-n>"] = { "<plug>(VM-Add-Cursor-Down)", "Add a new cursor down" },
			["<leader>?"] = { "<cmd>nohls<cr>", "Remove selection" },
			["<c-n>"] = { "<Nop>", "Removes open NvimTree default shortcut" },
		},
	},
	plugins = {
		"max397574/better-escape.nvim",
		"nacro90/numb.nvim",
		"matze/vim-move",
		"RRethy/vim-illuminate",
		"stevearc/dressing.nvim",
		"folke/todo-comments.nvim",
		"nvim-treesitter/nvim-treesitter-refactor",
		"windwp/nvim-spectre",
		"github/copilot.vim",
		"pwntester/octo.nvim",
		"akinsho/toggleterm.nvim",
		"lervag/vimtex",
		"mg979/vim-visual-multi",
	},
	hooks = {
		after_setup = function()
			require("better-vim.configs.treesitter")
			require("better-vim.configs.toggleterm")
			require("better-vim.configs.vim-visual-multi")
		end,
	},
}
