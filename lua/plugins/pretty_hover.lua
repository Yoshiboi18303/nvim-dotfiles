return {
  "Fildo7525/pretty_hover",
  event = "LspAttach",
  opts = {},
  init = function()
    vim.keymap.set(
      "n",
      "<leader>ch",
      "<cmd>lua require('pretty_hover').hover()<CR>",
      { noremap = true, silent = true, desc = "Show hover" }
    )
    vim.keymap.set(
      "n",
      "<leader>cH",
      "<cmd>lua require('pretty_hover').close()<CR>",
      { noremap = true, silent = true, desc = "Close hover" }
    )
  end,
}
