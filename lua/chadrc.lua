local M = {}

M.ui = {
  ------------------------------- base46 -------------------------------------
  -- hl = highlights
  hl_add = {},
  hl_override = {
      NvDashAscii = { bg = "NONE", fg = "blue" },
      NvDashButtons = { bg = "NONE" },
  },
  changed_themes = {},
  theme = "onenord",
  transparency = false,

  cmp = {
    icons = true,
    lspkind_text = true,
    style = "atom_colored", -- default/flat_light/flat_dark/atom/atom_colored
  },

  telescope = { style = "bordered" }, -- borderless / bordered

  ------------------------------- nvchad_ui modules -----------------------------
  statusline = {
    theme = "default", -- default/minimal
    -- default/round/block/arrow separators work only for default statusline theme
    -- round and block will work for minimal theme only
    separator_style = "arrow",
    order = nil,
    modules = nil,
  },

  -- lazyload it when there are 1+ buffers
  tabufline = {
    enabled = true,
    lazyload = true,
    order = { "treeOffset", "buffers", "tabs", "btns" },
    modules = nil,
  },

  nvdash = {
    load_on_startup = true,


    header = {
"                      ████████                ",
"                    ██░░░░░░░░██              ",
"                ████░░░░░░░░░░░░████          ",
"              ██░░░░░░░░░░░░░░░░░░░░██        ",
"        ████████░░░░░░░░░░░░░░░░░░░░████████  ",
"      ██░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░░██",
"        ████████████████████████████████████  ",
"              ██░░░░░░░░░░░░░░░░░░░░██        ",
"              ██░░░░░░░░░░░░░░░░░░░░██        ",
"              ██░░░░██░░░░░░██░░░░░░██        ",
"              ██░░░░░░░░░░░░░░░░░░░░██        ",
"              ██░░░░░░██████░░░░░░░░██        ",
"              ██░░░░░░░░░░░░░░░░░░░░██        ",
"      ██      ████░░░░░░░░░░░░░░░░████        ",
"    ██▒▒██        ████████████████            ",
"████▓▓██▒▒██    ██░░░░░░░░░░░░░░░░██          ",
"██▓▓▓▓▓▓██▒▒████░░██░░░░░░░░░░░░██░░██        ",
"  ██▓▓██  ██▒▒██░░██░░░░░░░░░░░░██░░██        ",
"    ████    ██░░████░░░░░░░░░░░░██░░██        ",
"              ██▒▒██░░░░░░░░░░░░████          ",
"                ████▓▓▓▓▓▓▓▓▓▓▓▓██            ",
"                  ██▓▓▓▓████▓▓▓▓██            ",
"                  ██████    ██████            ",
"Joe the Vim Guide                             ",
     },

    buttons = {
      { "  Find File", "Spc f f", "Telescope find_files" },
      { "󰈚  Recent Files", "Spc f r", "Telescope oldfiles" },
      { "󰈭  Find Word", "Spc f w", "Telescope live_grep" },
      { "↟  File Tree", "Ctrl n", "NvimTreeToggle" },
      { "  Themes", "Spc t h", "Telescope themes" },
      { "  Mappings", "Spc c h", "NvCheatsheet" },
    },
  },

  cheatsheet = {
    theme = "simple", -- simple/grid
    excluded_groups = { "terminal (t)", "autopairs", "Nvim", "Opens" }, -- can add group name or with mode
  },

  lsp = { signature = true },

  term = {
    hl = "Normal:term,WinSeparator:WinSeparator",
    sizes = { sp = 0.3, vsp = 0.2 },
    float = {
      relative = "editor",
      row = 0.3,
      col = 0.25,
      width = 0.5,
      height = 0.4,
      border = "single",
    },
  },
}

M.base46 = {
  integrations = {},
}

return M
