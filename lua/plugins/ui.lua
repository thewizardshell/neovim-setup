-- Harmony Japanese
--
-- ⠀⠀⠀⠀⠀⠀⠀⣰⣾⣶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⢀⣿⣿⣿⡿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⠀⣠⣿⣿⣟⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⣴⣿⡿⣿⣿⣿⡆⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⠀⣠⠾⠋⠁⠀⣿⣿⣿⣥⣶⣤⣤⣀⠀⣀⠀⢀⣀⣀⣀⣠⣤⣤⣤⣶⣦⣄⡀
-- ⠀⠀⠀⢀⣠⣤⣶⣿⣿⣿⣿⠿⠿⠟⠋⢸⣿⣿⣿⣿⣿⣿⠿⠿⠿⣿⣿⣿⣿⠷
-- ⢴⣶⣿⣿⣿⡿⣿⣿⣿⣿⣇⠀⠀⠀⠀⠀⣿⣿⣿⠉⠁⠀⠀⠀⢰⣿⣿⣿⠏⠀
-- ⠀⠉⠙⠋⠀⣰⣿⣿⣿⣿⡿⢿⣿⣷⡄⠀⢸⣿⣿⡇⠀⠀⠀⢀⣾⣿⣿⡿⠀⠀
-- ⠀⠀⠀⠀⣰⣿⣿⣿⣿⣿⡇⠀⠈⠉⠁⠀⢀⣿⣿⣷⣴⣶⣶⣾⣿⣿⣿⠁⠀⠀
-- ⠀⠀⠀⣰⣿⠿⠃⢸⣿⣿⡇⠀⠀⠀⠀⠀⠈⠻⢿⣿⡿⠿⠟⠿⠛⠛⠁⠀⠀⠀
-- ⠀⣀⠼⠛⠁⠀⠀⢸⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠈⠁⠀⠀⠀⠀⠀⢸⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
-- ⠀⠀⠀⠀⠀⠀⠀⠙⠻⠿⠇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀
return {
  {
    "folke/snacks.nvim",
    opts = function()
      local logo = [[


                                      222                                      
                                     2222                                      
                                     22222                                     
                                    2222222                                    
                                    2222222                                    
                                   222222222                                   
                                   22 222222                                   
                                  22   222222                                  
                                 222    222222                                 
                                 22  22 222222                                 
                                22   22  222222                                
                                22  222  222222                                
                               22   222   222222                               
                               22   2222  222222                               
                              22    2222   222222                              
                             222    22222  2222222                             
                             22     22222   222222                             
                            22               222222                            
                            22               222222                            
                           22                 222222                           
                          22222               222222                           
                                            222222                             
      ]]

      local sections = {
        { section = "header" },
        { icon = " ", title = "Keymaps", section = "keys", indent = 2, padding = 1 },
        { icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = 1 },
        { icon = " ", title = "Projects", section = "projects", indent = 2, padding = 1 },
        { section = "startup" },
      }

      -- Atajos de teclado
      local keymaps = {
        { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
        { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
        { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
        { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
        {
          icon = " ",
          key = "c",
          desc = "Config",
          action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
        },
        { icon = " ", key = "s", desc = "Restore Session", section = "session" },
        { icon = " ", key = "x", desc = "Lazy Extras", action = ":LazyExtras" },
        { icon = "󰒲 ", key = "l", desc = "Lazy", action = ":Lazy" },
        { icon = " ", key = "q", desc = "Quit", action = ":qa" },
      }

      return {
        dashboard = {
          preset = {
            header = logo,
            sections = sections,
            keys = keymaps,
          },
        },
      }
    end,
  },
}
