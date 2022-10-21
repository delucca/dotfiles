return {
	-- debugging
	["<f5>"] = { '<cmd>lua require"dap".continue()<cr>', "Continue or start debugger" },
	["<f6>"] = { '<cmd>lua require"dap".step_over()<cr>', "Step over on debugger" },
	["<f7>"] = { '<cmd>lua require"dap".step_into()<cr>', "Step into on debugger" },
	["<f8>"] = { '<cmd>lua require"dap".step_out()<cr>', "Step out on debugger" },
	["<leader>db"] = { '<cmd>lua require"dap".toggle_breakpoint()<cr>', "Toggle breakpoint" },
	["<leader>dr"] = { '<cmd>lua require"dap".repl_open()<cr>', "Open debugger REPL" },

	-- resize panels
	["<c-up>"] = { "<cmd>resize +2<cr>", "Increases the panel size vertically by 2 points" },
	["<c-down>"] = { "<cmd>resize -2<cr>", "Decreases the panel size vertically by 2 points" },
	["<c-left>"] = { "<cmd>vertical resize -2<cr>", "Decreases the panel size horizontally by 2 points" },
	["<c-right>"] = { "<cmd>vertical resize +2<cr>", "Increases the panel size horizontally by 2 points" },
	["<c-s-up>"] = { "<cmd>resize +7<cr>", "Increases the panel size vertically by 7 points" },
	["<c-s-down>"] = { "<cmd>resize -7<cr>", "Decreases the panel size vertically by 7 points" },
	["<c-s-left>"] = { "<cmd>vertical resize -7<cr>", "Decreases the panel size horizontally by 7 points" },
	["<c-s-right>"] = { "<cmd>vertical resize +7<cr>", "Increases the panel size horizontally by 7 points" },

	--  fix identation
	["<"] = { "<gv", "Avoid removing selection while reducing identation", mode = "v" },
	[">"] = { ">gv", "Avoid removing selection while adding identation", mode = "v" },

	-- text editing
	["p"] = { "'_dP", "Avoid copying replaced context after pasting", mode = "v" },
	["<leader>/"] = { "<cmd>nohls<cr>", "Removes current highlight" },

	-- nvim-tree-toggle
	["<leader>eo"] = { "<cmd>NvimTreeToggle<cr>", "Open file explorer" },

	-- file control
	["qw"] = { "<cmd>w<cr>", "Save file" },
	["qq"] = { "<cmd>qa<cr>", "Close file" },
	["qQ"] = { "<cmd>wqa<cr>", "Save and close file" },

	-- completions
	["<c-j>"] = {
		"coc#pum#visible() ? coc#pum#next(1) : '<c-j>'",
		"Navigate down on Coc list",
		mode = "i",
		expr = true,
	},
	["<c-k>"] = { "coc#pum#visible() ? coc#pum#prev(1) : '<c-k>'", "Navigate up on Coc list", mode = "i", expr = true },
	["<cr>"] = {
		"coc#pum#visible() ? coc#pum#confirm() : '<cr>'",
		"Confirm while in Coc list",
		mode = "i",
		expr = true,
	},
	["gd"] = { '<cmd>call CocAction("jumpDefinition")<cr>', "Go to definition" },
	["gD"] = { '<cmd>call CocAction("diagnosticInfo")<cr>', "Show diagnostic" },

	-- telescope
	["<leader>f"] = {
		'<cmd>lua require"telescope.builtin".find_files(require("telescope.themes").get_dropdown({ previewer = false }))<cr>',
		"Find files",
	},
	["<leader>ts"] = { "<cmd>Telescope coc workspace_symbols<cr>", "Find symbols in workspace" },
	["<leader>tS"] = { "<cmd>Telescope coc document_symbols<cr>", "Find symbols in document" },

	-- gitsigns
	["gh"] = { "<cmd>Gitsigns preview_hunk<cr>", "Preview Git changes" },
	["gb"] = { "<cmd>Gitsigns blame_line<cr>", "Git blame" },

	-- buffer, windows, and tabs
	["|"] = { "<cmd>vsplit<cr>", "Create a new vertical window" },
	["-"] = { "<cmd>split<cr>", "Create a new horizontal window" },
	[",q"] = { "<cmd>close<cr>", "Close current window" },
	["tn"] = { "<cmd>tabnew %<cr>", "Create a new tab" },
	["tq"] = { "<cmd>tabclose<cr>", "Exit current tab" },
	["tQ"] = { "<cmd>tabclose!<cr>", "Exit all tabs" },
	["ts"] = { "<cmd>tabonly<cr>", "Exit all but current tab" },
	["<s-h>"] = { "<cmd>tabNext<cr>", "Go to next tab" },
	["<s-l>"] = { "<cmd>tabprevious<cr>", "Go to previous tab" },
	["<m-l>"] = { "<cmd>BufferLineCycleNext<cr>", "Go to next buffer" },
	["<m-h>"] = { "<cmd>BufferLineCyclePrev<cr>", "Go to previous buffer" },
	["fq"] = { "<cmd>Bwipeout<cr>", "Exit buffer" },
	["fQ"] = { "<cmd>bufdo :Bdelete<cr>", "Exit all buffers" },
	["fc"] = { "<cmd>Bwipeout #<cr>", "Exit all but current buffer" },
	["fp"] = { "<cmd>BufferLinePick<cr>", "Pick buffer" },
	["fP"] = { "<cmd>BufferLinePickClose<cr>", "Pick buffer to close" },

	-- git
	["<m-g>"] = { "<cmd>lua _LAZYGIT_TOGGLE()<cr>", "Toggle Lazygit window" },

	-- projects
	["gp"] = { "<cmd>Telescope projects<cr>", "Open projects" },
}
