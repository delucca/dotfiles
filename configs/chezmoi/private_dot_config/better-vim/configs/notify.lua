local status_ok, notify = pcall(require, "notify")
if not status_ok then
	return
end

local function split_length(text, length)
	local lines = {}
	local next_line
	while true do
		if #text == 0 then
			return lines
		end
		next_line, text = text:sub(1, length), text:sub(length)
		lines[#lines + 1] = next_line
	end
end

vim.notify = notify
