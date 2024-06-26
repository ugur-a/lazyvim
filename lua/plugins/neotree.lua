return {
  "nvim-neo-tree/neo-tree.nvim",
  opts = {
    bind_to_cwd = true,
    follow_current_line = true,
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = false,
      },
    },
    window = { position = "right" },
  },
}
