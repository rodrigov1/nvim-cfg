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
        -- With this empty table, lualine_c (default) is disabled
        lualine_c = {},
        lualine_x = {
            -- This function returns the last (count - command - motion) action to display in lualine
          {
              function() return require("noice").api.status.command.get() end,
              cond = function() return package.loaded["noice"] and require("noice").api.status.command.has() end,
              color = { fg = "#ff9e64" },
          },
          {'filetype'},
        },
        lualine_y = {
          { "progress", separator = " ", padding = { left = 1, right = 1 } },
        },
        lualine_z = {
          -- This function returns the current time
          function()
            return " " .. os.date("%R")
          end,
        },
      },
    },
  },
}
