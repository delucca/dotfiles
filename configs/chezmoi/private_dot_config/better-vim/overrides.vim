lua << EOF
  local home = os.getenv("HOME")
  local configs_path = home .. '/.config/better-vim/configs/'
  local active_configs = {
    'autopairs',
    'better-escape',
    'bufferline',
    'coc',
    'dap',
    'gsigns',
    'null-ls',
    'vim-plug',
    'telescope',
    'tree',
    'treesitter',
  }

  for _, config in ipairs(active_configs) do
    local config_file = configs_path .. config .. '.lua'
    dofile(config_file)
  end
EOF

