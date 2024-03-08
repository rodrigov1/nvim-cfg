return {
  {
    'telescope.nvim',
    dependencies = {
      'nvim-telescope/telescope-fzf-native.nvim',
      build = 'make',
      config = function()
        require('telescope').load_extension 'fzf'
      end,
    },
  },
  require('telescope').setup {
    defaults = {
      layout_strategy = 'vertical',
      layout_config = {
        vertical = {
          width = 0.7,
          preview_cutoff = 1,
          preview_height = 0.45,
          prompt_position = 'bottom',
          scroll_speed = 3,
        },
      },
    },
  },
}
