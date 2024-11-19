return {
  {
    'CopilotC-Nvim/CopilotChat.nvim',
    branch = 'canary',
    dependencies = {
      { 'github/copilot.vim' }, -- or github/copilot.vim
      { 'nvim-lua/plenary.nvim' }, -- for curl, log wrapper
    },
    build = 'make tiktoken', -- Only on MacOS or Linux
    opts = {
      debug = true, -- Enable debugging
      -- See Configuration section for rest
      mappings = {
        show_diff = {
          normal = 'gb',
        },
      },
      window = {
        layout = 'float',
        relative = 'cursor',
        width = 1,
        height = 0.4,
        row = 1,
      },
    },
    init = function()
      -- vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
      vim.keymap.set('n', '<leader>ai', '<cmd>CopilotChat<CR>', { desc = 'Open diagnostic [Q]uickfix list' })
      vim.keymap.set('v', '<leader>ai', '<cmd>CopilotChat<CR>', { desc = 'Open diagnostic [Q]uickfix list' })
      -- vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
    end,
  },
}
