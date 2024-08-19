local M = {};

M.theme = function()
  local dashboard = require("alpha.themes.dashboard")

  dashboard.section.header.val = {
    "                        _         ",
    " ____  ___  ____ _   __(_)___ ___ ",
    "/_  / / _ \\/ __ \\ | / / / __ `__ \\",
    " / /_/  __/ / / / |/ / / / / / / /",
    "/___/\\___/_/ /_/|___/_/_/ /_/ /_/ ",
    "                                  "
  }

  dashboard.section.buttons.val = {
    dashboard.button( "e", "  > New File ", ":ene <BAR> startinsert <CR>"),
    dashboard.button( "f", "  > Find Files ", ":Telescope find_files<CR>"),
    dashboard.button( "r", "  > Recents ", ":Telescope oldfiles<CR>"),
    dashboard.button( "q", " 󰈆 > Quit ", ":qa!<CR>"),
  }

  return dashboard
end

M.setup = function()
  require("alpha").setup(M.theme().opts)
end

return M;
