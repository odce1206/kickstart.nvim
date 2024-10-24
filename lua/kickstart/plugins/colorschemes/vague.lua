-- Lazy
return {
  'vague2k/vague.nvim',
  lazy = false,
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    require('vague').setup {
      -- optional configuration here
    }
    vim.cmd.colorscheme 'vague'
  end,
}
