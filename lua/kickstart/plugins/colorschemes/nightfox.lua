return {
  {
    'EdenEast/nightfox.nvim',
    init = function()
      require('nightfox').setup {}

      -- vim.cmd.colorscheme 'cyberdream'
      vim.cmd.colorscheme 'carbonfox'
      -- You can configure highlights by doing something like:
      -- vim.cmd.hi 'Comment gui=none'
    end,
  },
}
