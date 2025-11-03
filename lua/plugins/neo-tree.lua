return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    lazy = false, -- neo-tree will lazy load itself.
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- File icons
      "folke/snacks.nvim", -- Image preview
      "3rd/image.nvim", -- Backup image preview
    },
    --@module "neo-tree"
    --@type neotree.Config
    opts = {
      sources = {
        "filesystem",
        -- "document_symbols",
      },
      theme = "auto",
    },
  },
  {
    "antosha417/nvim-lsp-file-operations",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-neo-tree/neo-tree.nvim", -- This needs to load after neo-tree.
    },
    config = function()
      require("lsp-file-operations").setup()
    end,
  },
  -- Commented out since pick_window is broken right now.
  -- {
  --   "s1n7ax/nvim-window-picker",
  --   config = function()
  --     require("window-picker").setup({
  --       filter_rules = {
  --         include_current_win = false,
  --         autoselect_one = true,
  --         bo = {
  --           filetype = { "neo-tree", "neo-tree-popup", "notify" },
  --           buftype = { "terminal", "quickfix" },
  --         },
  --       },
  --       hint = {
  --         border = "rounded",
  --         position = "bottom",
  --         winhighlight = "NormalFloat:NormalFloat",
  --       },
  --     })
  --   end,
  --   keys = {
  --     {
  --       "<leader>wp",
  --       function()
  --         require("window-picker").pick_window()
  --       end,
  --       mode = "n",
  --       desc = "Pick window",
  --     },
  --   },
  -- },
}
