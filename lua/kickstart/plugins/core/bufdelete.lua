return {
  'famiu/bufdelete.nvim',
  keys = {
    {
      '<leader>db',
      function()
        require('bufdelete').bufdelete(0, true)
      end,
      desc = 'Delete Current Buffer',
      -- silent = true,
    },
  },
}
