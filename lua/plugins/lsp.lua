return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- disable all the autostarts for direnv.nvim to work
      lua_ls = { autostart = false },
    },
  },
}
