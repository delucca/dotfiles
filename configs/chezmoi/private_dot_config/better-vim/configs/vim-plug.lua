vim.cmd([[
  augroup vimplug_user_config
    autocmd!
    autocmd BufWritePost plugins.vim source <afile> | PlugUpdate
  augroup end
]])
