return {
  {
    'EdenEast/nightfox.nvim',
    lazy = false,
    priority = 1000,
    init = function()
      require('nightfox').setup {
        options = {
          styles = {
            comments = 'italic',
            keywords = 'bold',
            types = 'italic,bold',
          },
        },
      }
      vim.cmd.colorscheme 'carbonfox'
    end,
  },
}
