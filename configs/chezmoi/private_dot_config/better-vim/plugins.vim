" Navigation
Plug 'max397574/better-escape.nvim'

" Debugging
Plug 'mfussenegger/nvim-dap'
Plug 'rcarriga/nvim-dap-ui'
Plug 'theHamsta/nvim-dap-virtual-text'
Plug 'mxsdev/nvim-dap-vscode-js'
Plug 'microsoft/vscode-js-debug', { 'do': 'npm install --legacy-peer-deps && npm run compile' }

" Text editing
Plug 'matze/vim-move'

" Autocomplete
Plug 'github/copilot.vim'

" Markdown
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug'] }
