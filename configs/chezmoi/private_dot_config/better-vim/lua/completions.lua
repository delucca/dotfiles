local check_backspace = function()
  local col = vim.fn.col "." - 1
  return col == 0 or vim.fn.getline("."):sub(col, col):match "%s"
end

vim.g.coc_global_extensions = {
  'coc-lists',
  'coc-snippets',
  'coc-docker',
  'coc-tsserver',
  'coc-prettier',
  'coc-eslint',
  'coc-tslint',
  'coc-highlight',
  'coc-sumneko-lua',
  'coc-sh',
  'coc-json',
  'coc-yaml',
  'coc-markdownlint',
  'coc-html',
  'coc-css',
  'coc-python',
}
