-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'supermaven-inc/supermaven-nvim',
    -- opts = {},
    keymaps = {
      accept_suggestion = '<C-]>',
      clear_suggestion = '',
      accept_word = '<C-j>',
    },
  },
  {
    'jinh0/eyeliner.nvim',
    config = function()
      require('eyeliner').setup {
        -- show highlights only after keypress
        highlight_on_key = true,

        -- dim all other characters if set to true (recommended!)
        dim = true,

        -- set the maximum number of characters eyeliner.nvim will check from
        -- your current cursor position; this is useful if you are dealing with
        -- large files: see https://github.com/jinh0/eyeliner.nvim/issues/41
        max_length = 9999,

        -- filetypes for which eyeliner should be disabled;
        -- e.g., to disable on help files:
        -- disabled_filetypes = {"help"}
        disabled_filetypes = {},

        -- buftypes for which eyeliner should be disabled
        -- e.g., disabled_buftypes = {"nofile"}
        disabled_buftypes = {},

        -- add eyeliner to f/F/t/T keymaps;
        -- see section on advanced configuration for more information
        default_keymaps = true,
      }
    end,
  },
  {
    'mfussenegger/nvim-dap',
    opts = {},
  },
  {
    'folke/drop.nvim',
    opts = {
      theme = 'matrix',
      screensaver = 1000 * 60 * 5,
    },
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
    'natecraddock/workspaces.nvim',
    config = function()
      require('workspaces').setup {
        hooks = {
          open = 'FzfLua files',
        },
      }
    end,
    -- opts = {
    -- },
  },

  -- natecraddock/workspaces.nvim
  {
    'ahmedkhalf/project.nvim',
    -- opts = {},
    config = function()
      require('project_nvim').setup {}
    end,
  },
  {
    'nvim-lualine/lualine.nvim',
    opts = {
      dependencies = {
        -- 'echavnovsky/mini.icons',
        -- MiniIcons,
        'nvim-tree/nvim-web-devicons',
      },
      options = {
        theme = 'auto',
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
        icons_enabled = true,
        icon_separator_active = '',
        icon_separator_inactive = '', -- what other options can be set here?
      },
      -- winbar = {},
      sections = {
        lualine_c = {
          {
            'buffers',
            show_filename_only = false,
            use_mode_colors = true,
          },
        },
        -- lualine_c = { { 'filename', path = 1 } },
        --
      },
      extensions = {
        'fzf',
      },
    },
  },
  {
    'ibhagwan/fzf-lua',
    dependencies = {
      -- 'echavnovsky/mini.icons',
      'nvim-tree/nvim-web-devicons',
    },
    opts = {},
  },
}
