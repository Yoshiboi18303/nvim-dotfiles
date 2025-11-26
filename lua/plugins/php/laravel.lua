return {
  {
    "adalessa/laravel.nvim",
    dependencies = {
      "tpope/vim-dotenv",
      "MunifTanjim/nui.nvim",
      "nvim-lua/plenary.nvim",
      "nvim-neotest/nvim-nio",
      "ravitemer/mcphub.nvim",
      "folke/which-key.nvim",
      "nvim-telescope/telescope.nvim", -- Picker, you can change this if you want a different one.
    },
    cmd = { "Sail", "Artisan", "Composer", "Npm", "Yarn", "Laravel" },
    config = true,
    init = function()
      require("which-key").add({
        "<leader>l",
        group = "laravel",
        mode = "n",
      })
    end,
    keys = {
      {
        "<leader>ll",
        function()
          Laravel.pickers.laravel()
        end,
        desc = "Open Laravel Picker",
      },
      {
        "<c-g>",
        function()
          Laravel.commands.run("view:finder")
        end,
        desc = "Open View Finder",
      },
      {
        "<leader>la",
        function()
          Laravel.pickers.artisan()
        end,
        desc = "Open Artisan Picker",
      },
      {
        "<leader>lt",
        function()
          Laravel.commands.run("actions")
        end,
        desc = "Open Actions Picker",
      },
      {
        "<leader>lr",
        function()
          Laravel.pickers.routes()
        end,
        desc = "Open Routes Picker",
      },
      {
        "<leader>lh",
        function()
          Laravel.run("artisan docs")
        end,
        desc = "Open Documentation",
      },
      {
        "<leader>lm",
        function()
          Laravel.pickers.make()
        end,
        desc = "Open Make Picker",
      },
      {
        "<leader>lc",
        function()
          Laravel.pickers.commands()
        end,
        desc = "Open Commands Picker",
      },
      {
        "<leader>lo",
        function()
          Laravel.pickers.resources()
        end,
        desc = "Open Resources Picker",
      },
      {
        "<leader>lp",
        function()
          Laravel.commands.run("command_center")
        end,
        desc = "Open Command Center",
      },
      {
        "gf",
        function()
          local ok, res = pcall(function()
            if Laravel.app("gf").cursorOnResource() then
              return "<cmd>lua Laravel.commands.run('gf')<cr>"
            end
          end)
          if not ok or not res then
            return "gf"
          end
          return res
        end,
        expr = true,
        noremap = true,
      },
    },
    event = "VeryLazy",
    opts = {
      features = {
        pickers = {
          provider = "telescope",
        },
      },
    },
  },
  require("plugins.php.blade"),
}
