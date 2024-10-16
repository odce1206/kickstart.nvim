return {
  'nvim-lualine/lualine.nvim',
  opts = {
    dependencies = {
      -- 'echasnovski/mini.icons',
      'nvim-tree/nvim-web-devicons',
    },
    options = {
      theme = 'auto',
      section_separators = { left = '', right = '' },
      -- section_separators = { left = '', right = '' },
      icons_enabled = true,
      component_separators = { left = '', right = '' },
    },
    sections = {
      lualine_a = {
        {
          'mode',
          icons_enabled = true, -- Enables the display of icons alongside the component.
          -- Defines the icon to be displayed in front of the component.
          -- Can be string|table
          -- As table it must contain the icon as first entry and can use
          -- color option to custom color the icon. Example:
          -- {'branch', icon = '¯éá'} / {'branch', icon = {'¯éá', color={fg='green'}}}

          -- icon position can also be set to the right side from table. Example:
          -- {'branch', icon = {'¯éá', align='right', color={fg='green'}}}
          icon = '',
        },
      },
      lualine_c = {
        {
          'buffers',
          show_filename_only = false,
          -- use_mode_colors = true,
          use_mode_colors = true,
          -- buffers_color = {
          --   -- Same values as the general color option can be used here.
          --   active = 'lualine_{section}_normal', -- Color for active buffer.
          --   inactive = 'lualine_{section}_inactive', -- Color for inactive buffer.
          -- },
          symbols = {
            modified = ' ●', -- Text to show when the buffer is modified
            alternate_file = '# ', -- Text to show to identify the alternate file
            directory = '', -- Text to show when the buffer is a directory
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
