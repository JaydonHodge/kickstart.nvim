return {
  'folke/snacks.nvim',
  ---@type snacks.Config
  ---@class snacks.explorer.Config
  opts = {
    quickfile = { enabled = true },
    indent = {
      indent = {
        enabled = true,
        char = '⎪',
        --only_scope = true,
        hl = 'SnacksIndent',
      },
      -- block = {
      --   enabled = true,
      --   char = {
      --     vertical = '▏',
      --   },
      -- },
    },
    dashboard = {
      sections = {
        { section = 'header' },
        {
          pane = 2,
          section = 'terminal',
          cmd = 'colorscript -e square',
          height = 5,
          padding = 1,
        },
        { section = 'keys', gap = 1, padding = 1 },
        { pane = 2, icon = ' ', title = 'Recent Files', section = 'recent_files', indent = 2, padding = 1 },
        { pane = 2, icon = ' ', title = 'Projects', section = 'projects', indent = 2, padding = 1 },
        {
          pane = 2,
          icon = ' ',
          title = 'Git Status',
          section = 'terminal',
          enabled = function()
            return Snacks.git.get_root() ~= nil
          end,
          cmd = 'git status --short --branch --renames',
          height = 5,
          padding = 1,
          ttl = 5 * 60,
          indent = 3,
        },
        { section = 'startup' },
      },
    },
    explorer = {
      enabled = true,
      layout = { cycle = false },
    },
    picker = {
      sources = {
        explorer = {
          focus = 'input',
          auto_close = true,
        },
      },
    },
    scratch = {},
  },
}
