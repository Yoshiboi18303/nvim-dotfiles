return {
  "olimorris/persisted.nvim",
  event = "BufReadPre",
  opts = {
    ignored_dirs = {
      { "~/", exact = true },
      "~/Downloads", -- Ignores subdirectories as well.
      { "/", exact = true },
    },
  },
}
