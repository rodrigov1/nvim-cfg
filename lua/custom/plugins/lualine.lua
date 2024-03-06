return {
  {
    'nvim-lualine/lualine.nvim',
    lazy = false,
    priority = 1000,
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = {
      options = {
        theme = 'nightfly',
        globalstatus = true,
        disabled_filetypes = { statusline = { 'dashboard', 'starter' } },
        extensions = { 'neo-tree' },
      },
      sections = {
        lualine_b = {'branch','diagnostics','diff'},
        lualine_c = {},
        lualine_x = {'filetype'},
        lualine_y = {
          { "progress", separator = " ", padding = { left = 1, right = 1 } },
        },
        lualine_z = {
          function()
            return " " .. os.date("%R")
          end,
        },
      },
    },
  },
}
