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
          file_ignore_patterns = {
            "node_modules/",
            ".git/",
            "target/",
            ".next/",
            ".nuxt/",
            ".sveltekit/",
            "dist/",
            "build/",
            "venv/",
            ".venv/",
            ".idea/",
            "__pycache__/",
            "%.log$",
          },
        },
      })

      local set = vim.keymap.set

      set({ "n", "v" }, "<C-.>", function() -- For my VS Code muscle memory.
        vim.lsp.buf.code_action()
      end, { desc = "Code Action" })
      set("n", "<leader>sy", function()
        require("telescope.builtin").colorscheme()
      end, { desc = "Change Theme" })
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
  {
    "nvim-telescope/telescope-ui-select.nvim",
    config = function()
      local telescope = require("telescope")

      telescope.setup({
        extensions = {
          ["ui-select"] = {
            require("telescope.themes").get_dropdown({}),
          },
        },
      })

      telescope.load_extension("ui-select")
    end,
  },
}
