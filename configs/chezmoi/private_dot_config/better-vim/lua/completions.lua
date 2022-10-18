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
}
