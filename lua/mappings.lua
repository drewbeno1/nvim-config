local map = vim.keymap.set

-- LSP
map("n", "[d", vim.diagnostic.goto_prev, { desc = "LSP Go to previous diagnostic" })
map("n", "]d", vim.diagnostic.goto_next, { desc = "LSP Go to next diagnostic" })
map("n", "E", vim.diagnostic.open_float, { desc = "LSP Open diagnostics" })

-- tabufline
map("n", "<leader>b", "<cmd>enew<CR>", { desc = "Buffer New" })

map("n", "<tab>", function()
  require("nvchad.tabufline").next()
end, { desc = "Buffer Goto next" })

map("n", "<S-tab>", function()
  require("nvchad.tabufline").prev()
end, { desc = "Buffer Goto prev" })

map("n", "<leader>x", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "Buffer Close" })

-- NvimTree
map("n", "<C-n>", "<cmd>NvimTreeToggle<CR>", { desc = "NvimTree Toggle window" })

-- Telescope
map("n", "<leader>fw", "<cmd>Telescope live_grep<CR>", { desc = "Telescope Live grep" })
map("n", "<leader>fb", "<cmd>Telescope buffers<CR>", { desc = "Telescope Find buffers" })
map("n", "<leader>cm", "<cmd>Telescope git_commits<CR>", { desc = "Telescope Git commits" })
map("n", "<leader>gt", "<cmd>Telescope git_status<CR>", { desc = "Telescope Git status" })
map("n", "<leader>pt", "<cmd>Telescope terms<CR>", { desc = "Telescope Pick hidden term" })
map("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Telescope Find files" })
map("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Telescope Find recent files" })
map(
  "n",
  "<leader>fa",
  "<cmd>Telescope find_files follow=true no_ignore=true hidden=true<CR>",
  { desc = "Telescope Find all files" }
)

-- Terminal
local function close_terminal()
  local win = vim.api.nvim_get_current_win()
  vim.api.nvim_win_close(win, true)
end

map("t", "<ESC>", close_terminal, { desc = "Terminal Close terminal" })
map("n", "<leader>te", function()
  require("nvchad.term").new { pos = "sp", size = 0.5 }
end, { desc = "Terminal New horizontal terminal" })

-- NvChad
map("n", "<leader>ch", "<cmd>NvCheatsheet<CR>", { desc = "NvChad Toggle NvCheatsheet" })
map("n", "<leader>th", "<cmd>Telescope themes<CR>", { desc = "NvChad Show themes" })

-- General
map("i", "<C-h>", "<Left>", { desc = "General Move Left" })
map("i", "<C-l>", "<Right>", { desc = "General Move Right" })
map("i", "<C-j>", "<Down>", { desc = "General Move Down" })
map("i", "<C-k>", "<Up>", { desc = "General Move Up" })
map("n", "<Esc>", "<cmd>noh<CR>", { desc = "General Clear highlights" })
map("n", "<C-h>", "<C-w>h", { desc = "General Switch Window left" })
map("n", "<C-l>", "<C-w>l", { desc = "General Switch Window right" })
map("n", "<C-j>", "<C-w>j", { desc = "General Switch Window down" })
map("n", "<C-k>", "<C-w>k", { desc = "General Switch Window up" })
map("n", "<C-c>", "<cmd>%y+<CR>", { desc = "General File Copy whole" })
map("n", "<S-u>", "<C-r>", { desc = "General Redo" })
map("n", "<C-d>", "<C-d>zz", { desc = "General Move half page down and center" })
map("n", "<C-u>", "<C-u>zz", { desc = "General Move half page up and center" })
map("n", "<C-f>", "<C-f>zz", { desc = "General Move half down and center" })
map("n", "<C-b>", "<C-b>zz", { desc = "General Move half up and center" })
map("n", "<leader>v", "<cmd> vsplit <CR>", { desc = "General Vertical split" })
map("n", "<leader>lu", "<cmd> Lazy update <CR>", { desc = "General Update Lazy plugins" })
map("n", "<leader>pr", "<cmd> MarkdownPreviewToggle <CR>", { desc = "General Preview Markdown file" })
map("i", "jk", "<ESC>", { desc = "General Escape insert mode" })
map("n", "<leader>fmt", function()
  vim.g.format_on_save = not vim.g.format_on_save
  if vim.g.format_on_save then
    print "Format on save enabled"
  else
    print "Format on save disabled"
  end
end, { desc = "General Toggle format on save" })

-- DAP
-- map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "DAP Add breakpoint at line" })
-- map("n", "<leader>dso", "<cmd> DapStepOver <CR>", { desc = "DAP Step over" })
-- map("n", "<leader>dsi", "<cmd> DapStepIn <CR>", { desc = "DAP Step in" })
-- map("n", "<leader>dc", "<cmd> DapContinue <CR>", { desc = "DAP Continue" })
-- map("n", "<leader>dt", "<cmd> DapTerminate <CR>", { desc = "DAP Terminate" })
-- map("n", "<leader>dgt", function()
--   require("dap-go").debug_test()
-- end, { desc = "DAP Debug Go test" })
-- map("n", "<leader>dglt", function()
--   require("dap-go").debug_last_test()
-- end, { desc = "DAP Debug last Go test" })
-- map("n", "<leader>dpt", function()
--   require("dap-python").test_method()
-- end, { desc = "DAP Debug Python test" })

-- Copilot
map("n", "<leader>cp", function()
  if vim.g.copilot_enabled then
    vim.cmd "Copilot disable"
    print "Copilot disabled"
  else
    if not vim.g.copilot_initialized then
      require("copilot").setup()
      require("copilot_cmp").setup()
      require("CopilotChat").setup()
      vim.g.copilot_initialized = true
    end
    vim.cmd "Copilot enable"
    print "Copilot enabled"
  end
  vim.g.copilot_enabled = not vim.g.copilot_enabled
end, { desc = "General Toggle Copilot" })

map("n", "<leader>cc", function()
  local input = vim.fn.input("Quick chat: ")
  if input ~= "" then
     require("CopilotChat").ask(input, { selection = require("CopilotChat.select").buffer })
  end
end, { desc = "CopilotChat - Quick Chat" })
