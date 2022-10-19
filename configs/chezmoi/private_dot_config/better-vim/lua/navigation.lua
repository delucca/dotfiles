-- Better escape
require("better_escape").setup()

-- Telescope
local telescope = require("telescope")
local telescope_actions = require("telescope.actions")

telescope.load_extension('coc')
telescope.load_extension('media_files')
telescope.setup {
  defaults = {
    mappings = {
      i = {
        ["<c-j>"] = telescope_actions.move_selection_next,
        ["<c-k>"] = telescope_actions.move_selection_previous,
        ["<c-q>"] = telescope_actions.send_to_qflist + telescope_actions.open_qflist,
        ["<c-c>"] = telescope_actions.close,
      },
    },
  },

  extensions = {
    media_files = {
      filetypes = { "png", "webp", "jpg", "jpeg" },
      find_cmd = "rg",
    },
  }
}
