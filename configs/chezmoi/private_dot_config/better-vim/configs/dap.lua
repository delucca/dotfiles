local setup_ok_dap, dap = pcall(require, "dap")
local setup_ok_dap_virtual_text, dap_virtual_text = pcall(require, "nvim-dap-virtual-text")
local setup_ok_dap_ui, dap_ui = pcall(require, "dapui")
local setup_ok_dap_vscode_js, dap_vscode_js = pcall(require, "dap-vscode-js")

if not setup_ok_dap_virtual_text or not setup_ok_dap_ui or not setup_ok_dap_vscode_js or not setup_ok_dap then
	return
end

dap_virtual_text.setup()
dap_ui.setup()

dap_vscode_js.setup({
	debugger_path = "/home/delucca/.config/nvim/plugged/vscode-js-debug",
	adapters = { "pwa-node", "pwa-chrome", "pwa-msedge", "node-terminal", "pwa-extensionHost" },
})

for _, language in ipairs({ "typescript", "javascript" }) do
	dap.configurations[language] = {
		{
			type = "pwa-node",
			request = "launch",
			name = "Launch application",
			runtimeExecutable = "pnpm",
			runtimeArgs = { "run-script", "start:debug" },
			console = "integratedTerminal",
			cwd = "${workspaceFolder}",
			protocol = "inspector",
			sourceMaps = true,
			trace = true,
		},
		{
			type = "pwa-node",
			request = "launch",
			name = "Launch file",
			program = "${file}",
			console = "integratedTerminal",
			cwd = "${workspaceFolder}",
			protocol = "inspector",
			sourceMaps = true,
			trace = true,
		},
		{
			type = "pwa-node",
			request = "attach",
			name = "Attach",
			processId = require("dap.utils").pick_process,
			console = "integratedTerminal",
			cwd = "${workspaceFolder}",
			protocol = "inspector",
			sourceMaps = true,
			trace = true,
		},
	}
end

-- dap.listeners.after.event_initialized["dapui_config"] = function()
-- 	dap_ui.open()
-- end
-- dap.listeners.before.event_terminated["dapui_config"] = function()
-- 	dap_ui.close()
-- end
-- dap.listeners.before.event_exited["dapui_config"] = function()
-- 	dap_ui.close()
-- end
