-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'supermaven-inc/supermaven-nvim',
    opts = {},
  },
  {
    'mfussenegger/nvim-dap',
    opts = {},
  },
  {
    'Mofiqul/dracula.nvim',
  },
  {
    'scottmckendry/cyberdream.nvim',
  },
  -- {
  --   'rebelot/kanagawa.nvim',
  --   opts = {
  --     theme = 'dragon',
  --   },
  -- },
  {
    'zaldih/themery.nvim',
    opts = {
      themes = {
        'dracula',
        'kanagawa-dragon',
      },
      livePreview = true,
    },
  },
  {
    'nvim-lualine/lualine.nvim',
    opts = {
      dependencies = {
        'nvim-tree/nvim-web-devicons',
      },
      options = {
        theme = 'auto',
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
        icons_enabled = true,
        icon_separator_active = '',
        icon_separator_inactive = '',
      },
    },
  },
  {

    'akinsho/bufferline.nvim',
    opts = {
      options = {
        dependencies = {
          'nvim-tree/nvim-web-devicons',
        },
        tag = '*',
        separator_style = 'slope',
      },
    },
  },
}
