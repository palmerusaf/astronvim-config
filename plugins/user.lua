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
  -- {
  --   "L3MON4D3/LuaSnip",
  --   config = function(plugin, opts)
  --     require "plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     require("luasnip.loaders.from_vscode").lazy_load { paths = { "./lua/user/snippets" } } -- load snippets paths
  --   end,
  -- },
  -- { "rafamadriz/friendly-snippets" },
  -- { "andys8/vscode-jest-snippets" },
  {
    "monsonjeremy/onedark.nvim",
    -- branch = "treesitter",
    opts = {
      colors = {
        bg = "#0a0c10",
      },
    },
  },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },
  {
    "rcarriga/nvim-notify",
    opts = {
      background_colour = "NotifyBackground",
      fps = 30,
      level = 2,
      minimum_width = 50,
      max_width = 200,
      render = "compact",
      stages = "static",
      timeout = 2000,
      top_down = true,
    },
  },
  {
    "delphinus/vim-firestore",
    event = "BufEnter *.rules",
  },
  {
    "evesdropper/luasnip-latex-snippets.nvim",
  },
  -- edits the directory in buffer press '-' to activate
  {
    "stevearc/oil.nvim",
    opts = {},
    keys = {
      { "-", "<cmd>Oil<cr>", mode = { "n" }, desc = "Open parent directory" },
    },
  },
  {
    "Wansmer/treesj",
    keys = { "<leader>m", "<leader>j", "<leader>S" },
    opts = {
      max_join_length = 240,
      max_split_length = 240,
    },
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    config = function()
      require("treesj").setup {--[[ your config ]]
      }
    end,
  },
  {
    "danymat/neogen",
    opts = {},
    keys = {
      { "<leader>lj", "<cmd>Neogen<cr>", mode = { "n" }, desc = "Create JsDoc" },
    },
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {},
  },
}
