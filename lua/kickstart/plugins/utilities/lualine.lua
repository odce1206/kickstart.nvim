return {
  'nvim-lualine/lualine.nvim',
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },
  opts = {
    options = {
      theme = 'auto',
      section_separators = { left = '', right = '' },
      icons_enabled = true,
      component_separators = { left = '', right = '' },
    },
    sections = {
      lualine_a = {
        {
          'mode',
          icons_enabled = true, -- Enables the display of icons alongside the component.
          icon = '',
          -- color = function(section)
          --   local currMode = vim.fn.mode()
          --   --require 'notify'(currMode)
          --   if currMode == 'n' then
          --     return { bg = '#3fc5b7', fg = '#282828' }
          --   elseif currMode == 'i' then
          --     return { bg = '#83c746', fg = '#282828' }
          --   elseif currMode == 'v' then
          --     return { bg = '#eb6eb7', fg = '#282828' }
          --   elseif currMode == 'V' then
          --     return { bg = '#eb6eb7', fg = '#282828' }
          --   elseif currMode == 'c' then
          --     return { bg = '#e67f43', fg = '#282828' }
          --   elseif currMode == 'r' then
          --     return { bg = '#ed4a46', fg = '#282828' }
          --   end
          --   -- return { fg = vim.bo.modified and '#aa3355' or '#33aa88' }
          -- end,
        },
      },
      lualine_c = {
        -- {
        --   'buffers',
        --   show_filename_only = true,
        --   -- use_mode_colors = true,
        --   use_mode_colors = true,
        --   -- buffers_color = {
        --   --   -- Same values as the general color option can be used here.
        --   --   active = 'lualine_{section}_normal', -- Color for active buffer.
        --   --   inactive = 'lualine_{section}_inactive', -- Color for inactive buffer.
        --   -- },
        --   symbols = {
        --     modified = ' ●', -- Text to show when the buffer is modified
        --     alternate_file = '# ', -- Text to show to identify the alternate file
        --     directory = '', -- Text to show when the buffer is a directory
        --   },
        -- },
        {
          'filename',
          symbols = {
            modified = '●', -- Text to show when the buffer is modified
            readonly = '', -- Text to show when the buffer is modified
          },
        },
      },
    },
    inactive_sections = {
      lualine_a = { 'filename' },
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = { 'location' },
    },
    -- tabline = {},
    extensions = {
      'fzf',
    },
  },
}
