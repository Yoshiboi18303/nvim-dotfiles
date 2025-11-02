return {
  "mistricky/codesnap.nvim",
  build = "make",
  keys = {
    { "<leader>cz", "<cmd>CodeSnap<cr>", mode = "x", desc = "Save selected code snapshot to clipboard" },
    { "<leader>cZ", "<cmd>CodeSnapSave<cr>", mode = "x", desc = "Save selected code snapshot to ~/CodeSnap" },
  },
  opts = {
    save_path = "~/CodeSnap",
    has_breadcrumbs = true,
    bg_color = "#222436",
    watermark = "Yoshiboi18303",
    has_line_number = true,
  },
}
