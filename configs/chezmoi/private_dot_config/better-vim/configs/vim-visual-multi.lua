vim.g.VM_show_warnings = 0
vim.g.VM_silent_exit = 1
vim.g.VM_theme = "ocean"

local status_ok, wk = pcall(require, "which-key")
if not status_ok then
	return
end

wk.register({
	["<c-n>"] = { "<Nop>", "", noremap = true },
})
