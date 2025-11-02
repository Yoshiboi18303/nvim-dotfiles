return {
  "Pocco81/auto-save.nvim",
  event = { "BufRead", "BufEnter", "BufNewFile" },
  config = function()
    require("auto-save").setup({})
  end,
}
