return {
  'nvim-lualine/lualine.nvim',
  opts = {
    dependencies = {
      'echasnovski/mini.icons',
    },
    options = {
      theme = 'auto',
      section_separators = { left = '', right = '' },
      -- section_separators = { left = '', right = '' },
      icons_enabled = true,
      component_separators = { left = '', right = '' },
    },
    sections = {
      lualine_c = {
        {
          'buffers',
          show_filename_only = false,
          use_mode_colors = true,
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
