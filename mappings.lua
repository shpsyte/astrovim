-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>R"] = { "ciw", desc = "Change word" },  -- change description but the same command
    ["<C-k>"] = { ":m .+1<CR>==", desc = "Move line down" },  -- change description but the same commandp
    ["<C-j>"] = { ":m .-2<CR>==", desc = "Move line up" },  -- change description but the ame command
    ["<leader>x"] = { ":!chmod +x %", desc = "make the file eecutable" },  -- change description but the same command
    ["<C-f>"] = { ":silent !tmux neww ~/tmx-sessionalize\n", desc = "make the file eecutable" },  -- change description but the same command
    -- copy all text in the file
    ["<leader>ca"] = { ":%y<CR>", desc = "Copy all text" },  -- change description but the same command
    ["<leader>rs"] = { ":LspOverloadsSignature<CR>", desc = "Show signature" },  -- change description but the same command
  },
  v = {
    ["<C-j>"] = { ":m '>+1<CR>gv=gv", desc = "Move line down" },  -- change description but the same commandp
    ["<C-k>"] = { ":m '<-2<CR>gv=gv", desc = "Move line up" },  -- change description but the same command
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  -- insert mode mappings
  i = {
    ["<C-s>"] = { ":LspOverloadsSignature<CR>", desc = "Show signature" },  -- change description but the same command
  }


  -- vim.api.nvim_buf_set_keymap(bufnr, "n", "<A-s>", ":LspOverloadsSignature<CR>", { noremap = true, silent = true })
 --  vim.api.nvim_buf_set_keymap(bufnr, "i", "<A-s>", ":LspOverloadsSignature<CR>", { noremap = true, silent = true })

}

