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
    'ThePrimeagen/vim-be-good',
  },
  {
    'ghassan0/telescope-glyph.nvim',
    keys = {
      { '<leader>si', '<cmd>Telescope glyph<cr>', desc = 'Search Glyphs' },
    },
  },
  {
    'norcalli/nvim-colorizer.lua',
    config = function()
      require('colorizer').setup()
    end,
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
    'rmagatti/auto-session',
    lazy = false,

    ---enables autocomplete for opts
    ---@module "auto-session"
    ---@type AutoSession.Config
    opts = {
      suppressed_dirs = { '~/', '~/repos', '~/Projects', '~/Downloads', '/' },
      -- log_level = 'debug',
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
    'jay-babu/mason-nvim-dap.nvim',
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
    'utilyre/barbecue.nvim',
    name = 'barbecue',
    version = '*',
    dependencies = {
      'SmiteshP/nvim-navic',
      'echasnovski/mini.icons', -- optional dependency
    },
    opts = {
      -- configurations go here
    },
  },
  {
    'natecraddock/workspaces.nvim',
    config = function()
      vim.keymap.set('n', '<C-g>', require('fzf-lua').grep, { desc = 'Grep' })
      require('workspaces').setup {
        hooks = {
          open = 'FzfLua files',
        },
      }
    end,
    enabled = false,
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
  },
  {
    'ibhagwan/fzf-lua',
    dependencies = {
      'echasnovski/mini.icons',
      -- 'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('fzf-lua').setup { 'telescope' }
    end,
    opts = {},
  },
  { 'nvim-focus/focus.nvim', version = '*', keys = {
    { '<leader>tf', '<cmd>FocusEnable<cr>', desc = '[F]ocus [E]nable' },
  }, enabled = false },
  {
    'ThePrimeagen/harpoon',
    branch = 'harpoon2',
    dependencies = { 'nvim-lua/plenary.nvim' },
    opts = {
      menu = {
        width = vim.api.nvim_win_get_width(0) - 4,
      },
      settings = {
        save_on_toggle = true,
      },
    },
    -- config = function()
    --   require('harpoon').setup {}
    --   local function toggle_telescope_with_harpoon(harpoon_files)
    --     local file_paths = {}
    --     for _, item in ipairs(harpoon_files.items) do
    --       table.insert(file_paths, item.value)
    --     end
    --
    --     require('telescope.pickers')
    --       .new({}, {
    --         prompt_title = 'Harpoon',
    --         finder = require('telescope.finders').new_table {
    --           results = file_paths,
    --         },
    --         previewer = require('telescope.config').values.file_previewer {},
    --         sorter = require('telescope.config').values.generic_sorter {},
    --       })
    --       :find()
    --   end
    --   vim.keymap.set('n', '<leader>a', function()
    --     local harpoon = require 'harpoon'
    --     toggle_telescope_with_harpoon(harpoon:list())
    --   end, { desc = 'Open harpoon window' })
    -- end,
    keys = function()
      local keys = {
        {
          '<leader>H',
          function()
            require('harpoon'):list():add()
          end,
          desc = 'Harpoon File',
        },
        {
          '<leader>hq',
          function()
            local function toggle_telescope_with_harpoon(harpoon_files)
              local file_paths = {}
              for _, item in ipairs(harpoon_files.items) do
                table.insert(file_paths, item.value)
              end

              require('telescope.pickers')
                .new({}, {
                  prompt_title = 'Harpoon',
                  finder = require('telescope.finders').new_table {
                    results = file_paths,
                  },
                  previewer = require('telescope.config').values.file_previewer {},
                  sorter = require('telescope.config').values.generic_sorter {},
                })
                :find()
            end
            local harpoon = require 'harpoon'
            toggle_telescope_with_harpoon(harpoon:list())
            -- harpoon.ui:toggle_quick_menu(harpoon:list())
          end,
          desc = 'Harpoon Quick Menu',
        },
      }

      for i = 1, 5 do
        table.insert(keys, {
          '<leader>' .. i,
          function()
            require('harpoon'):list():select(i)
          end,
          desc = 'Harpoon to File ' .. i,
        })
      end
      return keys
    end,
  },
}
