require('netcoredbg-macOS-arm64').setup(require('dap'))
require('live-server').setup(opts)
-- require('lsp-overloads').setup(client, {})
--


        -- UI options are mostly the same as those passed to vim.lsp.util.open_floating_preview
    require('lsp-overloads').setup(client, {
      -- UI options are mostly the same as those passed to vim.lsp.util.open_floating_preview
      ui = {
        -- Events that will close the signature popup window: use {"CursorMoved", "CursorMovedI", "InsertCharPre"} to hide the window when typing
        close_events = { "CursorMoved", "BufHidden", "InsertLeave" },
        focusable = true,                     -- Make the popup float focusable
        focus = false,                        -- If focusable is also true, and this is set to true, navigating through overloads will focus into the popup window (probably not what you want)
        offset_x = 0,                         -- Horizontal offset of the floating window relative to the cursor position
        offset_y = 0,                         -- Vertical offset of the floating window relative to the cursor position
        floating_window_above_cur_line = false, -- Attempt to float the popup above the cursor position
      },
      keymaps = {
        next_signature = "<C-j>",
        previous_signature = "<C-k>",
        next_parameter = "<C-l>",
        previous_parameter = "<C-h>",
        close_signature = "<A-s>"
      },
      display_automatically = true -- Uses trigger characters to automatically display the signature overloads when typing a method signature
    })


return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  --
  --
}
