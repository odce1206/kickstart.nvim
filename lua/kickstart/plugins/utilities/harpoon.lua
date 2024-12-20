return {
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
