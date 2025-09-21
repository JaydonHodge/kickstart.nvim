local function set_light_theme()
  vim.opt.background = 'light'
  --vim.cmd 'colorscheme kanagawa-paper-canvas'
  --vim.cmd 'colorscheme zenbones'
  vim.cmd 'colorscheme catppuccin'
end

local function set_dark_theme()
  vim.opt.background = 'dark'
  --vim.cmd 'colorscheme kanagawa-dragon'
  --vim.cmd 'colorscheme zenbones'
  vim.cmd 'colorscheme catppuccin'
end

-- Function to toggle between light and dark modes
local function toggle_theme()
  if vim.o.background == 'dark' then
    set_light_theme()
    -- Below is for catppuccin
    vim.api.nvim_set_hl(0, 'Special', { fg = '#5c71a4' })

    --vim.api.nvim_set_hl(0, 'Number', { fg = '#cc859e' })
    -- vim.api.nvim_set_hl(0, 'Number', { fg = '#b577aa' })
    -- vim.api.nvim_set_hl(0, 'String', { fg = '#5f847c' })
    -- vim.api.nvim_set_hl(0, 'Comment', { fg = '#a9a8a0' })
    -- vim.api.nvim_set_hl(0, 'Statement', { fg = '#5f8a9b', bold = true })
    -- vim.api.nvim_set_hl(0, 'Special', { fg = '#5c71a4' })
  else
    set_dark_theme()
    -- Below is for catppuccin
    vim.api.nvim_set_hl(0, 'Comment', { fg = '#6c7086' })

    --Below is for zenbones
    -- vim.api.nvim_set_hl(0, 'Number', { fg = '#ac7085' }) -- For neobones
    -- vim.api.nvim_set_hl(0, 'String', { fg = '#6d7d73' })
    -- vim.api.nvim_set_hl(0, 'Comment', { fg = '#524c49' })
    -- vim.api.nvim_set_hl(0, 'Constant', { fg = '#6b8e9c', italic = true })

    --vim.api.nvim_set_hl(0, 'Comment', { fg = '#524c49' })
    -- vim.api.nvim_set_hl(0, 'Statement', { fg = '#859fac', bold = true })
    -- vim.api.nvim_set_hl(0, 'String', { fg = '#80ab90' })
    -- vim.api.nvim_set_hl(0, 'Special', { fg = '#c4746e' })
  end
end

return {
  -- Or create a keybinding to toggle the theme
  vim.keymap.set('n', '<A-x>', toggle_theme, { desc = 'Toggle NVIM Color', noremap = true, silent = true }),
  --vim.keymap.set('n', '<A-l>', set_light_theme, { desc = 'Toggle NVIM light', noremap = true, silent = true }),
}
