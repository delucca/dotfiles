return {
	-- debugging
	["<f5>"] = { '<cmd>lua require"dap".continue()<cr>', "Continue or start debugger" },
	["<f6>"] = { '<cmd>lua require"dap".step_over()<cr>', "Step over on debugger" },
	["<f7>"] = { '<cmd>lua require"dap".step_into()<cr>', "Step into on debugger" },
	["<f8>"] = { '<cmd>lua require"dap".step_out()<cr>', "Step out on debugger" },
	["<leader>do"] = { '<cmd>lua require"dapui".toggle()<cr>', "Open debugger UI" },
	["<leader>db"] = { '<cmd>lua require"dap".toggle_breakpoint()<cr>', "Toggle breakpoint" },
	["<leader>dr"] = { '<cmd>lua require"dap".repl.open()<cr>', "Open debugger REPL" },
	["<leader>ds"] = { '<cmd>lua require"dap".terminate()<cr>', "Stop running debugger" },
	["<leader>er"] = { "<plug>RestNvim", "Execute request under cursor" },

	-- resize panels
	["<a-up>"] = { "<cmd>resize +2<cr>", "Increases the panel size vertically by 2 points" },
	["<a-down>"] = { "<cmd>resize -2<cr>", "Decreases the panel size vertically by 2 points" },
	["<a-left>"] = { "<cmd>vertical resize -2<cr>", "Decreases the panel size horizontally by 2 points" },
	["<a-right>"] = { "<cmd>vertical resize +2<cr>", "Increases the panel size horizontally by 2 points" },

	--  fix identation
	["<"] = { "<gv", "Avoid removing selection while reducing identation", mode = "v" },
	[">"] = { ">gv", "Avoid removing selection while adding identation", mode = "v" },

	-- text editing
	["p"] = { "<plug>(YankyPutAfter)", "Paste with Yanky" },
	["P"] = { "<plug>(YankyPutBefore)", "Paste with Yanky before cursor" },
	["<m-y>"] = { "<cmd>YankyRingHistory<cr>", "Open yank history" },
	["<m-o>"] = { "<plug>(YankyCycleForward)", "Cycle yank history forward" },
	["<m-[>"] = { "<plug>(YankyCycleBackward)", "Cycle yank history backward" },
	["<leader>/"] = { "<cmd>nohls<cr>", "Removes current highlight" },
	["go"] = { "<cmd>SymbolsOutline<cr>", "Opens outline" },
	["gt"] = { "<cmd>TroubleToggle<cr>", "Toggle Trouble window" },
	["grr"] = { "<cmd>lua require'nvim-treesitter-refactor.smart_rename'.smart_rename(5)<cr>", "Rename in file" },
	["grR"] = {
		"<cmd>lua require'spectre'.open_visual({ select_word = true })<cr>",
		"Rename in project",
	},
	["<a-J>"] = { "<plug>(VM-Add-Cursor-Down)", "Add a new cursor down" },
	["<a-K>"] = { "<plug>(VM-Add-Cursor-Up)", "Add a new cursor down" },
	["<a-.>"] = { "<cmd>CodeActionMenu<cr>", "Open code actions" },

	-- nvim-tree-toggle
	["<leader>eo"] = { "<cmd>NvimTreeToggle<cr>", "Open file explorer" },
	["<a-e>"] = { "<cmd>NvimTreeToggle<cr>", "Open file explorer" },

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
	["td"] = { '<cmd>call CocAction("diagnosticInfo")<cr>', "Show diagnostic" },
	["tt"] = { "<cmd>TroubleToggle<cr>", "Show all diagnostics for file" },
	["<c-s>"] = { "<cmd>call CocActionAsync('showSignatureHelp')<cr>", "Show signature of selected method", mode = "i" },

	-- telescope
	["<leader>f"] = {
		'<cmd>lua require"telescope.builtin".find_files(require("telescope.themes").get_dropdown({ previewer = false }))<cr>',
		"Find files",
	},
	["<leader>ts"] = { "<cmd>Telescope coc workspace_symbols<cr>", "Find symbols in workspace" },
	["<leader>tS"] = { "<cmd>Telescope coc document_symbols<cr>", "Find symbols in document" },
	["<leader>tk"] = { "<cmd>Legendary<cr>", "Find keymap" },
	["<m-p>"] = { "<cmd>Telescope find_files<cr>", "Find files" },
	["<m-f>"] = { "<cmd>Telescope live_grep<cr>", "Search" },
	["<m-P>"] = { "<cmd>Telescope projects<cr>", "Find files" },

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
	["<C-L>"] = { "<cmd>BufferLineCycleNext<cr>", "Go to next buffer" },
	["<C-H>"] = { "<cmd>BufferLineCyclePrev<cr>", "Go to previous buffer" },
	["<m-H>"] = { "<cmd>BufferLineMovePrev<cr>", "Move buffer to left" },
	["<m-L>"] = { "<cmd>BufferLineMoveNext<cr>", "Move buffer to right" },
	["<a-h>"] = { "<cmd>NavigatorLeft<cr>", "Go to window on left" },
	["<a-j>"] = { "<cmd>NavigatorDown<cr>", "Go to window below" },
	["<a-k>"] = { "<cmd>NavigatorUp<cr>", "Go to window above" },
	["<a-l>"] = { "<cmd>NavigatorRight<cr>", "Go to window on right" },
	["<a-;>"] = { "<cmd>NavigatorPrevious<cr>", "Go to previous window" },
	["fq"] = { "<cmd>Bwipeout<cr>", "Exit buffer" },
	["fQ"] = { "<cmd>bufdo :Bdelete<cr>", "Exit all buffers" },
	["fs"] = { "<cmd>w<cr>", "Save file" },
	["fc"] = { "<cmd>Bwipeout #<cr>", "Exit all but current buffer" },
	["fp"] = { "<cmd>BufferLinePick<cr>", "Pick buffer" },
	["fP"] = { "<cmd>BufferLinePickClose<cr>", "Pick buffer to close" },
	["<a-w>"] = { "<cmd>WinShift<cr>", "Move current window elsewhere" },
	["<leader>w"] = { "<cmd>lua require('nvim-window').pick()<cr>", "Switch to a specific window" },

	-- git
	["<m-g>"] = { "<cmd>lua _LAZYGIT_TOGGLE()<cr>", "Toggle Lazygit window" },

	-- projects
	["gp"] = { "<cmd>Telescope projects<cr>", "Open projects" },
	["gP"] = { "<cmd>Telescope zoxide list<cr>", "Find directory using Zoxide" },

	-- zen-mode
	["zz"] = { "<cmd>Twilight<cr>", "Toggle twilight" },
	["zZ"] = { "<cmd>TZAtaraxis<cr>", "Toggle ataraxis zen-mode" },
	["zm"] = { "<cmd>TZMinimalist<cr>", "Toggle minimalist zen-mode" },
	["zn"] = { ":'<,'>TZNarrow<cr>", "Toggle narrow zen-mode", mode = "v" },

	-- javascript
	["<leader>ete"] = { "<cmd>lua require'jester'.run()", "Run test under cursor" },
	["<leader>etE"] = { "<cmd>lua require'jester'.run_file()", "Run all tests from this file" },
	["<leader>etd"] = { "<cmd>lua require'jester'.debug()", "Debug test under cursor" },
}
