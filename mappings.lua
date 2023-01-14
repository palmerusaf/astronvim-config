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
    ["<leader>bb"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bc"] = { "<cmd>BufferLinePickClose<cr>", desc = "Pick to close" },
    ["<leader>bj"] = { "<cmd>BufferLinePick<cr>", desc = "Pick to jump" },
    ["<leader>bt"] = { "<cmd>BufferLineSortByTabs<cr>", desc = "Sort by tabs" },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command

    --Session lowercase s remap
    ["<leader>s"] = { name = "󱂬 Session" },
    ["<leader>sl"] = { "<cmd>SessionManager! load_last_session<cr>", desc = "Load last session" },
    ["<leader>ss"] = { "<cmd>SessionManager! save_current_session<cr>", desc = "Save this session" },
    ["<leader>sd"] = { "<cmd>SessionManager! delete_session<cr>", desc = "Delete session" },
    ["<leader>sf"] = { "<cmd>SessionManager! load_session<cr>", desc = "Search sessions" },
    ["<leader>s."] = { "<cmd>SessionManager! load_current_dir_session<cr>", desc = "Load current directory session" },

    -- marks remapping
    ["`"] = { name = "Go To Mark" },
    ["`a"] = { "`A" },
    ["`b"] = { "`B" },
    ["`c"] = { "`C" },
    ["`d"] = { "`D" },
    ["`e"] = { "`E" },
    ["`f"] = { "`F" },
    ["`g"] = { "`G" },
    ["`h"] = { "`H" },
    ["`i"] = { "`I" },
    ["`j"] = { "`J" },
    ["`k"] = { "`K" },
    ["`l"] = { "`L" },
    ["`m"] = { "`M" },
    ["`n"] = { "`N" },
    ["`o"] = { "`O" },
    ["`p"] = { "`P" },
    ["`q"] = { "`Q" },
    ["`r"] = { "`R" },
    ["`s"] = { "`S" },
    ["`t"] = { "`T" },
    ["`u"] = { "`U" },
    ["`v"] = { "`V" },
    ["`w"] = { "`W" },
    ["`x"] = { "`X" },
    ["`y"] = { "`Y" },
    ["`z"] = { "`Z" },

    ["'"] = { name = "Go To Mark" },
    ["'a"] = { "'A" },
    ["'b"] = { "'B" },
    ["'c"] = { "'C" },
    ["'d"] = { "'D" },
    ["'e"] = { "'E" },
    ["'f"] = { "'F" },
    ["'g"] = { "'G" },
    ["'h"] = { "'H" },
    ["'i"] = { "'I" },
    ["'j"] = { "'J" },
    ["'k"] = { "'K" },
    ["'l"] = { "'L" },
    ["'m"] = { "'M" },
    ["'n"] = { "'N" },
    ["'o"] = { "'O" },
    ["'p"] = { "'P" },
    ["'q"] = { "'Q" },
    ["'r"] = { "'R" },
    ["'s"] = { "'S" },
    ["'t"] = { "'T" },
    ["'u"] = { "'U" },
    ["'v"] = { "'V" },
    ["'w"] = { "'W" },
    ["'x"] = { "'X" },
    ["'y"] = { "'Y" },
    ["'z"] = { "'Z" },

    ["m"] = { name = "Set Mark" },
    ["ma"] = { "mA" },
    ["mb"] = { "mB" },
    ["mc"] = { "mC" },
    ["md"] = { "mD" },
    ["me"] = { "mE" },
    ["mf"] = { "mF" },
    ["mg"] = { "mG" },
    ["mh"] = { "mH" },
    ["mi"] = { "mI" },
    ["mj"] = { "mJ" },
    ["mk"] = { "mK" },
    ["ml"] = { "mL" },
    ["mm"] = { "mM" },
    ["mn"] = { "mN" },
    ["mo"] = { "mO" },
    ["mp"] = { "mP" },
    ["mq"] = { "mQ" },
    ["mr"] = { "mR" },
    ["ms"] = { "mS" },
    ["mt"] = { "mT" },
    ["mu"] = { "mU" },
    ["mv"] = { "mV" },
    ["mw"] = { "mW" },
    ["mx"] = { "mX" },
    ["my"] = { "mY" },
    ["mz"] = { "mZ" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
