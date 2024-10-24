return {
  'rose-pine/neovim',
  name = 'rose-pine',
  lazy = false,
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    require('rose-pine').setup {
      variant = 'auto', -- auto, main, moon, or dawn
      dark_variant = 'main', -- main, moon, or dawn
    }
    vim.cmd 'colorscheme rose-pine'
  end,
}
