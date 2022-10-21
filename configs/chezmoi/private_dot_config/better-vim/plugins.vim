" Navigation
Plug 'max397574/better-escape.nvim'
Plug 'nvim-telescope/telescope-media-files.nvim'

" Debugging
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'theHamsta/nvim-dap-virtual-text'
Plug 'mxsdev/nvim-dap-vscode-js'
Plug 'microsoft/vscode-js-debug', { 'do': 'npm install --legacy-peer-deps && npm run compile' }

" Text editing
Plug 'matze/vim-move'
Plug 'p00f/nvim-ts-rainbow'

" Completions
Plug 'github/copilot.vim'
Plug 'fannheyward/telescope-coc.nvim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug'] }

" Git
Plug 'lewis6991/gitsigns.nvim'

" Buffer, windows, and tabs
Plug 'moll/vim-bbye'

" Formatting
Plug 'jose-elias-alvarez/null-ls.nvim'
