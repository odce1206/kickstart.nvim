return {
  'scottmckendry/cyberdream.nvim',
  lazy = false,
  priority = 1000,
  init = function()
    require('cyberdream').setup {
      transparent = true,
      italic_comments = true,
    }

    -- vim.cmd.colorscheme 'cyberdream'
    vim.cmd.colorscheme 'cyberdream'
    -- You can configure highlights by doing something like:
    -- vim.cmd.hi 'Comment gui=none'
  end,
}
