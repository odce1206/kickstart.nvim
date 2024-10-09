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
    'linux-cultist/venv-selector.nvim',
    dependencies = { 'neovim/nvim-lspconfig', 'nvim-telescope/telescope.nvim', 'mfussenegger/nvim-dap-python' },
    config = function()
      require('venv-selector').setup {
        -- Your options go here
        -- name = "venv",
        -- auto_refresh = false
      }
    end,
    -- event = 'VeryLazy', -- Optional: needed only if you want to type `:VenvSelect` without a keymapping
    keys = {
      -- Keymap to open VenvSelector to pick a venv.
      { '<leader>vs', '<cmd>VenvSelect<cr>', desc = 'Select Environment' },
      -- Keymap to retrieve the venv from a cache (the one previously used for the same project directory).
      { '<leader>vc', '<cmd>VenvSelectCached<cr>', desc = 'Select Cached' },
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
  {
    'kylechui/nvim-surround',
    version = '*', -- Use for stability; omit to use `main` branch for the latest features
    event = 'VeryLazy',
    config = function()
      require('nvim-surround').setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
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
        'nvim-tree/nvim-web-devicons',
      },
      options = {
        theme = 'auto',
        section_separators = { left = '', right = '' },
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
