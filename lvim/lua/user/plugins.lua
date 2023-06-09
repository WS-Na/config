lvim.plugins = {
  -- 主题
  { "catppuccin/nvim",    name = "catppuccin" },

  -- 快速移动
  {
    "phaazon/hop.nvim",
    event = "BufRead",
    config = function()
      require("hop").setup()
      vim.api.nvim_set_keymap("n", "fw", ":HopChar2<cr>", { silent = true })
      vim.api.nvim_set_keymap("n", "ff", ":HopWord<cr>", { silent = true })
    end,
  },
  { "tpope/vim-surround", },
  --git diffview
  {
    "sindrets/diffview.nvim",
    event = "BufRead",
  },
  -- python dap test
  "ChristianChiarulli/swenv.nvim",
  "stevearc/dressing.nvim",
  "mfussenegger/nvim-dap-python",
  "nvim-neotest/neotest",
  "nvim-neotest/neotest-python",


}
