-- Uncomment the line below if you don't use Tmux at all.
-- if true then return {} end

return {
  "otavioschwanck/tmux-awesome-manager.nvim",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  config = function()
    require("tmux-awesome-manager").setup({
      per_project_commands = {
        bot = { { cmd = "bun start", name = "Start Bot" } },
      },
      session_name = "Neovim Terminals",
      use_icon = false,
      picker = "telescope",
      icon = " ",
      project_open_as = "pane",
      default_size = "30%",
      open_new_as = "pane",
      default_orientation = "horizontal",
    })
  end,
}
