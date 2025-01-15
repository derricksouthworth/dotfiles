return {
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
      "nvim-lua/plenary.nvim",
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    },
    config = function()
      require("telescope").setup({
        pickers = {
          find_files = {
            theme = "ivy",
          },
        },
        extensions = {
          fzf = {},
        },
      })

      require("telescope").load_extension("fzf")

      vim.keymap.set("n", "<space>fh", require("telescope.builtin").help_tags, { desc = "[F]ind [H]elp" })
      vim.keymap.set("n", "<space>fk", require("telescope.builtin").keymaps, { desc = "[F]ind [K]eymaps" })
      vim.keymap.set("n", "<space>ff", require("telescope.builtin").find_files, { desc = "[F]ind [F]iles" })
      vim.keymap.set("n", "<space>en", function()
        require("telescope.builtin").find_files({
          cwd = vim.fn.stdpath("config"),
        })
      end, { desc = "[E]dit [N]eovim Config" })
      vim.keymap.set("n", "<space>ep", function()
        require("telescope.builtin").find_files({
          cwd = vim.fs.joinpath(vim.fn.stdpath("data"), "lazy"),
        })
      end)

      require("config.telescope.multigrep").setup()
    end,
  },
}
