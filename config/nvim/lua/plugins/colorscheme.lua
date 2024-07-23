return {
  {
    "catppuccin",
    opts = {
      transparent_background = true,
      no_italic = true,
    },
  },
  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function()
      local highlight = {
        "RainbowRed",
        "RainbowYellow",
        "RainbowBlue",
        "RainbowOrange",
        "RainbowGreen",
        "RainbowViolet",
        "RainbowCyan",
      }

      local hooks = require("ibl.hooks")
      -- create the highlight groups in the highlight setup hook, so they are reset
      -- every time the colorscheme changes
      hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
        vim.api.nvim_set_hl(0, "RainbowRed",    { fg = "#e78284" })
        vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#e5c890" })
        vim.api.nvim_set_hl(0, "RainbowBlue",   { fg = "#8caaee" })
        vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#ef9f76" })
        vim.api.nvim_set_hl(0, "RainbowGreen",  { fg = "#a6d189" })
        vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#ca9ee6" })
        vim.api.nvim_set_hl(0, "RainbowCyan",   { fg = "#babbf1" })
      end)

      require("ibl").setup({ indent = { highlight = highlight } })
    end,
  },
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
    },
  },
}
