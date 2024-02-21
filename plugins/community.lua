return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of importing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  { import = "astrocommunity.completion.copilot-lua-cmp" },
  { import = "astrocommunity.colorscheme.rose-pine" },
  {import = "astrocommunity.colorscheme.catppuccin" },
  {import = "astrocommunity.pack.html-css"},
  {import = "astrocommunity.pack.json"},
  {import = "astrocommunity.pack.markdown"},
  {import = "astrocommunity.pack.prisma"},
  {import = "astrocommunity.pack.tailwindcss"},
  {import = "astrocommunity.pack.typescript"},
  {import = "astrocommunity.pack.typescript-all-in-one"},
  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = 120,
      disabled_filetypes = { "help" },
    },
  },
}
