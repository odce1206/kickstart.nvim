return {
  'jakewvincent/mkdnflow.nvim',
  config = function()
    require('mkdnflow').setup {
      -- Config goes here; leave blank for defaults
      perspective = {
        priority = 'root',
        fallback = 'current',
        root_tell = 'index.md',
      },
      new_file_template = {
        use_template = true,
        template = [[
          # {{ title }}
          Date: {{ date }}
          ]],
        placeholders = {
          before = {
            date = function()
              return os.date '%A, %B %d, %Y' -- Wednesday, March 1, 2023
            end,
          },
          -- after = {
          --   filename = function()
          --     return vim.api.nvim_buf_get_name(0)
          --   end,
          -- },
        },
      },
    }
  end,
}
