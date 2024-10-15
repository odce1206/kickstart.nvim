return {
  -- COLORSCHEME CONFIG
  {
    -- 'scottmckendry/cyberdream.nvim',
    'rebelot/kanagawa.nvim',
    lazy = false,
    priority = 1000, -- Make sure to load this before all the other start plugins.
    init = function()
      require('kanagawa').setup {
        compile = false, -- enable compiling the colorscheme
        undercurl = true, -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true },
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false, -- do not set background color
        dimInactive = false, -- dim inactive window `:h hl-NormalNC`
        terminalColors = true, -- define vim.g.terminal_color_{0,17}
        colors = { -- add/modify theme and palette colors
          palette = {
            sumiInk0 = '#0d0c0c',
            sumiInk1 = '#12120f',
            sumiInk2 = '#1D1C19',
            sumiInk3 = '#181616',
            sumiInk4 = '#282727',
            sumiInk5 = '#393836',
            sumiInk6 = '#625e5a',
          },
          theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors) -- add/modify highlights
          return {}
        end,
        theme = 'wave', -- Load "wave" theme when 'background' option is not set
        background = { -- map the value of 'background' option to a theme
          dark = 'wave', -- try "dragon" !
          light = 'lotus',
        },
      }

      -- vim.cmd.colorscheme 'cyberdream'
      vim.cmd.colorscheme 'kanagawa'
      -- You can configure highlights by doing something like:
      -- vim.cmd.hi 'Comment gui=none'
    end,
  },
}
