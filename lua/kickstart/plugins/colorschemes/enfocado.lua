return {
  'wuelnerdotexe/vim-enfocado',
  lazy = false,
  priority = 1000,
  config = function()
    vim.g.enfocado_style = 'neon'
  end,
  init = function()
    vim.cmd.colorscheme 'enfocado'
  end,
}
