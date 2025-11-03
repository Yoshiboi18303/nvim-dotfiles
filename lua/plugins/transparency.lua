return {
  "xiyaowong/transparent.nvim",
  lazy = false,
  config = function()
    local transparent = require("transparent")
    transparent.setup({
      extra_groups = {
        "NeoTree",
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        "NeoTreeWinSeparator",
        "NeoTreeGitUntracked",
        "NeoTreeFileName",
        "NormalFloat",
        "TelescopePrompt",
        "TelescopeResults",
        "TelescopePreview",
        "FloatBorder",
        "TelescopeBorder",
        "NotifyBackground",
      },
    })
  end,
}
