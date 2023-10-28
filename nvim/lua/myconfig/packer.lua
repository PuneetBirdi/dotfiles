return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
	use {
      'nvim-treesitter/nvim-treesitter',
      run = ':TSUpdate'
  }
	use 'lervag/vimtex'
use {
  "nvim-telescope/telescope.nvim",
  requires = {
		{'nvim-lua/plenary.nvim'},
    { "nvim-telescope/telescope-live-grep-args.nvim" },
  },
  config = function()
    require("telescope").load_extension("live_grep_args")
  end
}
	use 'vim-test/vim-test'
  use 'PuneetBirdi/vscode-theme.nvim'
  use 'nvim-tree/nvim-web-devicons'

  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
    run = ":MasonUpdate" -- :MasonUpdate updates registry contents
  }
	use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v2.x',
  requires = {
    -- LSP Support
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},     -- Required
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {'L3MON4D3/LuaSnip'},     -- Required
  }
}
  use {
    'nvim-lualine/lualine.nvim'
  }
	use {
  'rmagatti/goto-preview',
  config = function()
    require('goto-preview').setup {}
  end
}
end)
