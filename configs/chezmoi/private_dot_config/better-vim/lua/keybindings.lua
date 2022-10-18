return {
  -- debugging
  ["<f5>"] = { "<cmd>lua require'dap'.continue()<cr>", "Continue or start debugger" },
  ["<f6>"] = { "<cmd>lua require'dap'.step_over()<cr>", "Step over on debugger" },
  ["<f7>"] = { "<cmd>lua require'dap'.step_into()<cr>", "Step into on debugger" },
  ["<f8>"] = { "<cmd>lua require'dap'.step_out()<cr>", "Step out on debugger" },
  ["<leader>db"] = { "<cmd>lua require'dap'.toggle_breakpoint()<cr>", "Toggle breakpoint" },
  ["<leader>dr"] = { "<cmd>lua require'dap'.repl_open()<cr>", "Open debugger REPL" },

  -- resize panels
  ["<c-up>"] = { "<cmd>resize +2<cr>", "Increases the panel size vertically by 2 points" },
  ["<c-down>"] = { "<cmd>resize -2<cr>", "Decreases the panel size vertically by 2 points" },
  ["<c-left>"] = { "<cmd>vertical resize -2<cr>", "Decreases the panel size horizontally by 2 points" },
  ["<c-right>"] = { "<cmd>vertical resize +2<cr>", "Increases the panel size horizontally by 2 points" },
  ["<c-s-up>"] = { "<cmd>resize +7<cr>", "Increases the panel size vertically by 7 points" },
  ["<c-s-down>"] = { "<cmd>resize -7<cr>", "Decreases the panel size vertically by 7 points" },
  ["<c-s-left>"] = { "<cmd>vertical resize -7<cr>", "Decreases the panel size horizontally by 7 points" },
  ["<c-s-right>"] = { "<cmd>vertical resize +7<cr>", "Increases the panel size horizontally by 7 points" },

  -- navigate between buffers
  ["<s-l>"] = { "<cmd>bnext<cr>", "Go to next buffer" },
  ["<s-h>"] = { "<cmd>bprevious<cr>", "Go to previos buffer" },

  --  fix identation
  ["<"] = { "<gv", "Avoid removing selection while reducing identation", mode = "v" },
  [">"] = { ">gv", "Avoid removing selection while adding identation", mode = "v" },

  -- text editing
  ["p"] = { '"_dP', "Avoid copying replaced context after pasting", mode = "v" },
  ["<leader>/"] = { "<cmd>nohls<cr>", "Removes current highlight" },

  -- nvim-tree-toggle
  ["<leader>eo"] = { "<cmd>NvimTreeToggle<cr>", "Open file explorer" },

  -- file control
  ["<leader>fs"] = { "<cmd>w<cr>", "Save file" },
  ["<leader>fq"] = { "<cmd>qa<cr>", "Close file" },
  ["<leader>fQ"] = { "<cmd>wqa<cr>", "Save and close file" },

  -- completions
  ["<c-j>"] = { 'coc#pum#visible() ? coc#pum#next(1) : "<c-j>"', "Navigate down on Coc list", mode = "i", expr = true },
  ["<c-k>"] = { 'coc#pum#visible() ? coc#pum#prev(1) : "<c-k>"', "Navigate up on Coc list", mode = "i", expr = true },
}
