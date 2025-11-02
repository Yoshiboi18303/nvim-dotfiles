return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
    },
    config = function()
      local telescope = require("telescope")
      telescope.setup({
        defaults = {
          prompt_prefix = "🔍 ",
          selection_caret = "➤ ",
          layout_strategy = "horizontal",
          file_ignore_patterns = { "node_modules/", ".git/", "target/", ".next/", ".nuxt/", ".sveltekit/" },
        },
      })

      vim.keymap.set("n", "<leader>ca", function()
        require("telescope.builtin").lsp_code_actions()
      end)
    end,
  },
  {
    "nvim-telescope/telescope-fzf-native.nvim",
    build = "make",
    dependencies = { "nvim-telescope/telescope.nvim" },
    config = function()
      require("telescope").load_extension("fzf")
    end,
  },
}
