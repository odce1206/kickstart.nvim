return {
  'shortcuts/no-neck-pain.nvim',
  version = '*',
  keys = {
    { '<leader>np', ':NoNeckPain<CR>', desc = 'No Neck Pain', silent = true },
    { '<leader>nu', ':NoNeckPainWidthUp<CR>', desc = 'No Neck Pain Width Up', silent = true },
    { '<leader>nd', ':NoNeckPainWidthDown<CR>', desc = 'No Neck Pain Width Down', silent = true },
    { '<leader>ns', ':NoNeckPainScratchPad<CR>', desc = 'No Neck Pain ScratchPad', silent = true },
  },
  config = function()
    require('no-neck-pain').setup {
      width = 150,
      buffers = {
        scratchPad = {
          -- set to `false` to
          -- disable auto-saving
          enabled = false,
          -- set to `nil` to default
          -- to current working directory
          location = '~/Documents/notes/scratchpad/',
        },
        bo = {
          filetype = 'md',
        },
      },
    }
  end,
}
