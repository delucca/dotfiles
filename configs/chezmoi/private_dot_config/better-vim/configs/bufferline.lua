local status_ok, bufferline = pcall(require, "bufferline")
if not status_ok then
	return
end

bufferline.setup({
	highlights = {
		buffer_selected = {
			italic = false,
		},
		pick_selected = {
			italic = false,
		},
	},
	options = {
		numbers = "none",
		close_command = "Bdelete! %d",
		right_mouse_command = "Bdelete! %d",
		left_mouse_command = "buffer %d",
		middle_mouse_command = nil,
		show_close_icon = false,
		buffer_close_icon = "×",
		modified_icon = "●",
		left_trunc_marker = "",
		right_trunc_marker = "",
		separator_style = "thin",
		diagnostics = "coc",
		diagnostics_indicator = function(count, level)
			local icon = level:match("error") and " " or " "
			return " " .. icon .. count
		end,
		offsets = {
			{
				filetype = "NvimTree",
				text = " Explorer",
				highlight = "NvimTreeNormal",
				text_align = "left",
			},
		},
	},
})
