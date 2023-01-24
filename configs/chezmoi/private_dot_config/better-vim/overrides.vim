lua << EOF
  local home = os.getenv("HOME")
  local configs_path = home .. '/.config/better-vim/configs/'
  local active_configs = {
    'autopairs',
    'better-escape',
    'bufferline',
    'coc',
    'code-action-menu',
    'comment',
    'copilot',
    'dap',
    'dashboard',
    'gsigns',
    --'hologram',
    --'impatient', - For some reason, it is breaking Github Copilot
    'leap',
    'legendary',
    'lualine',
    'navigator',
    'notify',
    'null-ls',
    'numb',
    --'nx',
    'octo',
    'project',
    'rest',
    'shade',
    'spectre',
    'symbols-outline',
    'vim-plug',
    'telescope',
    'todo-comments',
    'toggleterm',
    'tree',
    'treesitter',
    'trouble',
    'true-zen',
    'twilight',
    'ufo',
    'vim-illuminate',
    'vim-visual-multi',
    'wilder',
    'winshift',
    'yanky',
  }

  for _, config in ipairs(active_configs) do
    local config_file = configs_path .. config .. '.lua'
    dofile(config_file)
  end
EOF
