-- Don't need this plugin? Uncomment the line below.
-- if true then return {} end

-- Change this to false if you don't want the history plugin
-- The history plugin requires VectorCode if you want to load it.
local use_history = true

return {
  {
    "olimorris/codecompanion.nvim",
    opts = {
      extensions = {
        history = {
          enabled = use_history,
          opts = {
            keymap = "gh",
            auto_save = true,
            expiration_days = 0,
            picker = "telescope",
            chat_filter = nil,
            auto_generate_title = true,
            delete_on_clearing_chat = true,
            dir_to_save = vim.fn.stdpath("data") .. "/codecompanion-history",
            enable_logging = false,
            memory = {
              auto_create_memories_on_summary_generation = true,
              vectorcode_exe = "vectorcode",
              tool_opts = {
                default_num = 10,
              },
              notify = true,
              index_on_startup = true,
            },
          },
        },
        mcphub = {
          callback = "mcphub.extensions.codecompanion",
          opts = {
            make_vars = true,
            make_slash_commands = true,
            show_result_in_chat = true,
          },
        },
      },
    },
    dependencies = {
      "nvim-lua/plenary.nvim",
      "ravitemer/mcphub.nvim",
      "ravitemer/codecompanion-history.nvim",
    },
  },
}
