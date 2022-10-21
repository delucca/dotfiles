local status_ok, wilder = pcall(require, "wilder")
if not status_ok then
	return
end

wilder.setup({
	modes = { ":", "/", "?" },
	next_key = "<c-j>",
	previous_key = "<c-k>",
	accept_key = "<c-l>",
	rejecet_key = "<c-h>",
})

wilder.set_option(
	"renderer",
	wilder.popupmenu_renderer({
		pumblend = 5,
		left = { " ", wilder.popupmenu_devicons() },
		right = { " ", wilder.popupmenu_scrollbar() },
		highlights = {
			default = "StatusLine",
			accent = wilder.make_hl(
				"WilderAccent",
				"Pmenu",
				{ { a = 1 }, { a = 1 }, { foreground = "#f4468f", background = "transparent" } }
			),
		},
		highlighter = wilder.basic_highlighter(),
	})
)

wilder.set_option("pipeline", {
	wilder.branch(
		wilder.cmdline_pipeline({
			language = "python",
			fuzzy = 1,
		}),
		wilder.python_search_pipeline({
			pattern = wilder.python_fuzzy_pattern(),
			sorter = wilder.python_difflib_sorter(),
			engine = "re",
		})
	),
})
