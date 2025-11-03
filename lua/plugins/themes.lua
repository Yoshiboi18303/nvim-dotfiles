return {
  -- Uncomment which theme(s) you want loaded.
  -- Keep in mind the more you load, the slower Neovim may start up.
  -- So only uncomment what you need.
  require("plugins.themes.catppuccin"),
  -- require("plugins.themes.cyberdream"),
  -- require("plugins.themes.dark_flat"),
  -- require("plugins.themes.dracula"),
  -- require("plugins.themes.embark"),
  -- require("plugins.themes.everforest"),
  -- require("plugins.themes.everviolet"),
  -- require("plugins.themes.lavi"),
  require("plugins.themes.material"),
  -- require("plugins.themes.monokai"),
  require("plugins.themes.moonlight"),
  -- require("plugins.themes.NeoSolarized"),
  -- require("plugins.themes.nordic"),
  -- require("plugins.themes.onedarkpro"),
  require("plugins.themes.tokyonight"),
  -- require("plugins.themes.vercel"),
  require("plugins.themes.vscode"),

  -- Required for the theme to actually be applied.
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin-mocha", -- Replace this with the theme you want, make sure it's uncommented above.
    },
  },
}
