return {
  "nvim-telescope/telescope.nvim",
  keys = {
    { "<leader>fd", LazyVim.pick("auto", { cwd = "~/.dotfiles" }), desc = "Find Dotfiles" },
    { "<leader>sd", LazyVim.pick("live_grep", { cwd = "~/.dotfiles" }), desc = "Grep Dotfiles" },
    { "<leader>uC", false },
    {
      "<leader>uc",
      LazyVim.pick("colorscheme", { enable_preview = true, ignore_builtins = true }),
      desc = "Colorscheme with Preview",
    },
  },
  -- add project dirs for project.nvim
  dependencies = {
    "nvim-telescope/telescope-project.nvim",
    keys = {
      -- need to use this as soon as I open the app
      -- because otherwise the plugin loading order gets messed up or something
      -- https://github.com/LazyVim/LazyVim/issues/283#issuecomment-1433390326
      { "<C-p>", "<cmd>lua require('telescope').extensions.project.project{}<cr>", desc = "Telescope Project" },
    },
    config = function()
      require("telescope").load_extension("project")
    end,
  },
  opts = {
    extensions = {
      project = { base_dirs = {
        { path = "~/dev", max_depth = 4 },
        { path = "~/.dotfiles" },
      } },
    },
  },
}
