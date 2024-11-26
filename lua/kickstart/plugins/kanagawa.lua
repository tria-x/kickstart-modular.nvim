return {
  {
    'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000, -- Make sure to load this before all the other start plugins.

    config = function()
      require('kanagawa').setup {

        -- Windows Terminal picks some other font to support italic,
        -- so we're explicitly disabling italic.
        -- https://stackoverflow.com/questions/78137732/how-can-i-fully-disable-italics-with-the-kanagawa-theme-in-neovim
        commentStyle = { italic = false },
        keywordStyle = { italic = false },
        overrides = function()
          return {
            ['@variable.builtin'] = { italic = false },
          }
        end,

        colors = {
          palette = {
            -- Bg Shades, bluish tint removed

            -- wave: ui.bg_m3, float.bg, float.bg_border, term - black
            sumiInk0 = '#161616', -- was #16161D

            -- wave: ui.bg_dim, ui.bg_m2
            sumiInk1 = '#181818', -- was #181820

            -- wave: ui.bg_m1
            sumiInk2 = '#1a1a1a', -- was #1a1a22

            -- wave: ui.bg
            -- lotus: term - black
            sumiInk3 = '#1F1F1F', -- was #1F1F28

            -- wave: ui.bg_gutter, ui.bg_p1
            sumiInk4 = '#2A2A2A', -- was #2A2A37

            -- wave: ui.bg_p2
            sumiInk5 = '#363636', -- was #363646

            -- wave: ui.nontext, ui.whitespace, float.fg_border
            -- dragon: float.fg_border
            sumiInk6 = '#545454', -- was #54546D
          },
          theme = {
            wave = {
              ui = {
                bg_gutter = 'none',
                bg = 'none',
              },
            },
          },
        },
      }

      vim.cmd.colorscheme 'kanagawa-wave'
      -- You can configure highlights by doing something like:
      -- vim.cmd.hi 'Comment gui=none'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
