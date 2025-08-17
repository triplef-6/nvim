return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  -- подсветка копируемого текста
  {
    "machakann/vim-highlightedyank",
    lazy = false,
  },
  -- git
  {
    "tpope/vim-fugitive",
    lazy = false,
  },
  -- debag
  {
    "mfussenegger/nvim-dap",
    lazy = false,
  },
  -- ?лигатуры
  {
    "ryanoasis/vim-devicons",
    lazy = false,
  },
  --ranger
  {
    "francoiscabrol/ranger.vim",
    lazy = false,
  },
  {
    "anuvyklack/hydra.nvim",
    lazy = false,
  },

  {
  	"nvim-treesitter/nvim-treesitter",
  	opts = {
  		ensure_installed = {
  			"vim", "lua", "vimdoc",
       "html", "css"
  		},
  	},
  },
}
