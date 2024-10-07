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
  -- {
  --   'akinsho/bufferline.nvim',
  --   opts = {
  --     options = {
  --       themable = true,
  --       dependencies = {
  --         'nvim-tree/nvim-web-devicons',
  --       },
  --       tag = '*',
  --       separator_style = 'slope',
  --     },
  --   },
  -- },
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
      -- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
    },
  },
}
