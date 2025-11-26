return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local orca = [[
                                                
                          .             
                          ..            
                           ..           
                          ..;           
                           -;:          
                   ...=si;====._.       
              ..:=;=;==Ins;=;;=;;;..    
           ..;;;;::::;:;++:;:::::::;:.  
        ..::::::::=sas,::::::-:]mgw,::: 
 ._. -.:.:--.:...+QQWWQc..-....-?VH[.-: 
 .-"-.......=s_as_v>"$Wk.......-.._ss,>_
            --"?T9$QQQQQs,=_=-.._QQQWQD'
                    --"""???`..:-!??!`  
                            ..:-        
                            .::         
                    --
        ]]

    orca = string.rep("\n", 3) .. orca .. string.rep("\n", 2)

    local quotes = {
      "Orcas deserve the best you can give them.",
      "Remember, always return your cart.",
      "You're probably building something else you'll drop in 5 seconds.",
      "Lazybones don't know what they are, you do.",
      "Every coding session is a chance to make something, or drop it immediately.",
      "Don't let your laziness get the better of you.",
      'Please don\'t take a shit on the public bathroom floor and pass it off as: "They pay people to clean it."',
    }

    -- Actually makes shit random.
    math.randomseed(os.time())

    local quote = string.rep("\n", 2) .. quotes[math.random(#quotes)] .. " - " .. os.date("%Y/%m/%d %H:%M:%S")

    require("dashboard").setup({
      theme = "hyper",
      shortcut_type = "letter",
      config = {
        header = vim.split(orca, "\n"),
        packages = { enable = true },
        hide = {
          statusline = false,
          tabline = false,
          winbar = false,
        },
        shortcut = {
          { desc = "Find Files", key = "f", action = "Telescope find_files", icon = "🔍" },
          { desc = "New File", key = "n", action = "enew", icon = "📄" },
          { desc = "Recent Files", key = "r", action = "Telescope oldfiles", icon = "📂" },
          { desc = "Extras", key = "x", action = "LazyExtras", icon = "⚙️" },
          { desc = "Config", key = "c", action = "edit $MYVIMRC", icon = "🛠" },
          { desc = "Quit", key = "q", action = "quit", icon = "👋" },
        },
        mru = { enable = true, limit = 6, label = " Recent Files:", cwd_only = false },
        footer = vim.split(quote, "\n"),
      },
    })
  end,
}
