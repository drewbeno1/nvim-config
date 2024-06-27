return {
  {
    "CopilotC-Nvim/CopilotChat.nvim",
    branch = "canary",
    dependencies = {
      { "zbirenbaum/copilot.lua" },
      { "nvim-lua/plenary.nvim" },
    },
    opts = {
      debug = true,
      question_header = '## Breezy ',
      answer_header = '## Copilot ',
      show_help = false,
    },
  },
}
