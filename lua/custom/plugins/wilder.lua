return {
  'gelguy/wilder.nvim',

  config = function()
    -- inside your config function
    local wilder = require 'wilder'
    wilder.setup { modes = { ':', '/', '?' } }
    wilder.set_option('use_python_remote_plugin', 0)

    local highlighters = {
      wilder.basic_highlighter(),
    }

    local accent = wilder.make_hl('WilderAccent', 'Title', { { a = 1 }, { a = 1 }, { foreground = '#d13662' } }) --#c4746e

    wilder.set_option(
      'renderer',
      wilder.popupmenu_renderer(wilder.popupmenu_palette_theme {
        border = 'rounded',
        max_height = '75%',
        min_height = 0,
        prompt_position = 'top',
        reverse = 0,
        highlighter = highlighters,
        highlights = { accent = accent },
      })
    )

    -- local wilder = require 'wilder'
    -- wilder.setup { modes = { ':', '/', '?' } }
    --
    -- -- Disable Python remote plugin
    -- wilder.set_option('use_python_remote_plugin', 0)
    --
    -- wilder.set_option(
    --   'renderer',
    --   wilder.popupmenu_renderer(wilder.popupmenu_palette_theme {
    --     -- 'single', 'double', 'rounded' or 'solid'
    --     -- can also be a list of 8 characters, see :h wilder#popupmenu_palette_theme() for more details
    --     border = 'rounded',
    --     max_height = '75%', -- max height of the palette
    --     min_height = 0, -- set to the same as 'max_height' for a fixed height window
    --     prompt_position = 'top', -- 'top' or 'bottom' to set the location of the prompt
    --     reverse = 0, -- set to 1 to reverse the order of the list, use in combination with 'prompt_position'
    --   })
    -- )
    --
    -- -- wilder.set_option(
    -- --   'renderer',
    -- --   wilder.popupmenu_renderer(wilder.popupmenu_border_theme {
    -- --     highlighter = wilder.basic_highlighter(),
    -- --     min_width = '35%', -- minimum width of the popupmenu, can also be a number
    -- --     min_height = '50%', -- to set a fixed height, set max_height to the same value
    -- --     reverse = 0, -- if 1, shows the candidates from bottom to top
    -- --
    -- --     highlights = {
    -- --       border = 'Normal', -- highlight to use for the border
    -- --       accent = wilder.make_hl('WilderAccent', 'Title', { { a = 1 }, { a = 1 }, { foreground = '#c4746e' } }),
    -- --     },
    -- --     -- 'single', 'double', 'rounded' or 'solid'
    -- --     -- can also be a list of 8 characters, see :h wilder#popupmenu_border_theme() for more details
    -- --     border = 'rounded',
    -- --   })
    -- -- )
  end,
}
