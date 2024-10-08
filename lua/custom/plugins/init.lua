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
    'kdheepak/lazygit.nvim',
    lazy = true,
    cmd = {
      'LazyGit',
      'LazyGitConfig',
      'LazyGitCurrentFile',
      'LazyGitFilter',
      'LazyGitFilterCurrentFile',
    },
    -- optional for floating window border decoration
    dependencies = {
      'nvim-lua/plenary.nvim',
    },
    -- setting the keybinding for LazyGit with 'keys' is recommended in
    -- order to load the plugin when the command is run for the first time
    keys = {
      { '<leader>lg', '<cmd>LazyGit<cr>', desc = 'LazyGit' },
    },
    -- opts = {},
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
  {
    'ibhagwan/fzf-lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {},
  },
}
