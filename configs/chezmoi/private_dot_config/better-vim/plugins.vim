" Navigation
Plug 'max397574/better-escape.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'
Plug 'ggandor/leap.nvim'
Plug 'tpope/vim-repeat'
Plug 'nvim-lua/popup.nvim'
Plug 'jvgrootveld/telescope-zoxide'
Plug 'nacro90/numb.nvim'
Plug 'mrjones2014/legendary.nvim'

" Debugging
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'theHamsta/nvim-dap-virtual-text'
Plug 'mxsdev/nvim-dap-vscode-js'
Plug 'microsoft/vscode-js-debug', { 'do': 'npm install --legacy-peer-deps && npm run compile' }
Plug 'NTBBloodbath/rest.nvim'

" Text editing
Plug 'matze/vim-move'
Plug 'p00f/nvim-ts-rainbow'
Plug 'RRethy/vim-illuminate'
Plug 'geekifan/symbols-outline.nvim'
Plug 'gbprod/yanky.nvim'
Plug 'stevearc/dressing.nvim'
Plug 'edluffy/hologram.nvim'
Plug 'folke/todo-comments.nvim'
Plug 'numToStr/Comment.nvim'
Plug 'nvim-treesitter/nvim-treesitter-refactor'
Plug 'windwp/nvim-spectre'
Plug 'weilbith/nvim-code-action-menu'
Plug 'kevinhwang91/promise-async'
Plug 'kevinhwang91/nvim-ufo'

" Completions
Plug 'github/copilot.vim'
Plug 'fannheyward/telescope-coc.nvim'
Plug 'folke/trouble.nvim'

function! UpdateRemotePlugins(...)
    let &rtp=&rtp
    UpdateRemotePlugins
  endfunction
Plug 'gelguy/wilder.nvim', { 'do': function('UpdateRemotePlugins') }
Plug 'nixprime/cpsm'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug'] }

" Git
Plug 'lewis6991/gitsigns.nvim'
Plug 'sindrets/diffview.nvim'
Plug 'pwntester/octo.nvim'

" Buffer, windows, and tabs
Plug 'moll/vim-bbye'
Plug 'numToStr/Navigator.nvim'
Plug 'sindrets/winshift.nvim'
Plug 'https://gitlab.com/yorickpeterse/nvim-window.git'
Plug 'mg979/vim-visual-multi'

" Formatting
Plug 'jose-elias-alvarez/null-ls.nvim'

" Terminal
Plug 'akinsho/toggleterm.nvim'

" Project
Plug 'ahmedkhalf/project.nvim'

" Startup
Plug 'lewis6991/impatient.nvim'

" Zen-mode
Plug 'folke/twilight.nvim'
Plug 'Pocco81/true-zen.nvim'
Plug 'sunjon/shade.nvim'

" Notifications
Plug 'rcarriga/nvim-notify'

" Javascript
Plug 'David-Kunz/jester'
