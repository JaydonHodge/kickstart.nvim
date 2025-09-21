return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,
  config = function()
    vim.cmd.colorscheme 'catppuccin-mocha'
    vim.api.nvim_set_hl(0, 'CursorLineNr', { fg = '#b7bdf8', bold = true })
  end,
}
