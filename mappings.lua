-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr) require("astronvim.utils.buffer").close(bufnr) end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    --Session lowercase s remap
    ["<leader>s"] = { name = "Sessions" },
    ["<leader>sl"] = { "<cmd>SessionManager! load_last_session<cr>", desc = "Load last session" },
    ["<leader>ss"] = { "<cmd>SessionManager! save_current_session<cr>", desc = "Save this session" },
    ["<leader>sd"] = { "<cmd>SessionManager! delete_session<cr>", desc = "Delete session" },
    ["<leader>sf"] = { "<cmd>SessionManager! load_session<cr>", desc = "Search sessions" },
    ["<leader>s."] = { "<cmd>SessionManager! load_current_dir_session<cr>", desc = "Load current directory session" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
