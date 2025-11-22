return {
  "olimorris/persisted.nvim",
  event = "BufReadPre",
  opts = {
    ignored_dirs = {
      "~/",
      "~/projects",
      "~/Downloads",
      "/",
    },
  },
}
