return {
  {
    'ibhagwan/fzf-lua',
    dependencies = {
      'echasnovski/mini.icons',
      -- 'nvim-tree/nvim-web-devicons',
    },
    config = function()
      require('fzf-lua').setup { 'telescope' }
    end,
    opts = {},
  },
}
