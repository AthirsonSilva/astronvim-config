return {
  opts = {
    clipboard = "unnamedplus",
  },
  highlights = {
    init = {},
  },
  plugins = {
    "gbprod/cutlass.nvim",
    "AstroNvim/astrocommunity",
    { import = "astrocommunity.motion.mini-move" },
    { import = "astrocommunity.project.nvim-spectre" },
    { import = "astrocommunity.project.projectmgr-nvim" },
  },
  mappings = {
    -- first key is the mode
    n = {
      -- second key is the lefthand side of the map
      -- mappings seen under group name "Buffer"
      ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
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
      ["<C-s>"] = { ":w!<cr>", desc = "Save File" }, -- change description but the same command
      ["d"] = { '"_d', desc = "Deletes current line without copying the contents" },
      -- ["<Del>"] = { '"_d', desc = "Delete visual selection without saving to clipboard" },
    },
    v = {
      -- setting a mapping to false will disable it
      -- ["<esc>"] = false,
      ["<Del>"] = { '"_d', desc = "Delete visual selection without saving to clipboard" },
    },
  },
}
