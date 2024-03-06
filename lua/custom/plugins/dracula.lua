return {
  { 'Mofiqul/dracula.nvim' ,

  lazy = false, -- make sure we load this during startup if it is your main colorscheme
  priority = 1000, -- make sure to load this before all the other start plugins
  config = function ()
      ---@type dracula
      local dracula = require "dracula"

      dracula.setup({
      transparent = false,
      colors = {
          bg = "#21222d",
      },
      plugins = {
        ["nvim-treesitter"] = true,
        ["nvim-lspconfig"] = true,
        ["nvim-navic"] = true,
        ["nvim-cmp"] = true,
        ["indent-blankline.nvim"] = true,
        ["neo-tree.nvim"] = true,
        ["nvim-tree.lua"] = true,
        ["which-key.nvim"] = true,
        ["dashboard-nvim"] = true,
        ["gitsigns.nvim"] = true,
        ["neogit"] = true,
        ["todo-comments.nvim"] = true,
        ["lazy.nvim"] = true,
        ["telescope.nvim"] = true,
        ["noice.nvim"] = true,
        ["hop.nvim"] = true,
        ["mini.statusline"] = true,
        ["mini.tabline"] = true,
        ["mini.starter"] = true,
        ["mini.cursorword"] = true,
      }
      })
      vim.cmd.colorscheme 'dracula'
    end
  },
}
