return {
  'Mofiqul/dracula.nvim',
  name = 'dracula',
  priority = 1000,
  config = function()
    vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#b7bdf8', bold = true })
  end,
}
