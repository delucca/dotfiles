lua << EOF
  local home = os.getenv("HOME")
  local config_path = home .. '/.config/better-vim/lua/'
  local active_configs = {
    'debugger',
    'navigation',
    'package-management',
    'completions',
    'syntax-highlighting',
  }

  for _, config in ipairs(active_configs) do
    local config_file = config_path .. config .. '.lua'
    dofile(config_file)
  end
EOF

