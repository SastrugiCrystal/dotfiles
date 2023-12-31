-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use'wbthomason/packer.nvim'
  use{'stevearc/dressing.nvim'}
  use{
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
  use ({ "catppuccin/nvim", 
	  as = "catppuccin",
	  config = function()
		  vim.cmd.colorscheme "catppuccin-mocha"
	  end
  })
  use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
  use('nvim-treesitter/playground')
  use('theprimeagen/harpoon')
  use('mbbill/undotree')
  use('tpope/vim-fugitive')
  use('mg979/vim-visual-multi')

  use {
        'nvim-tree/nvim-tree.lua',
        requires = {
        'nvim-tree/nvim-web-devicons', -- optional
      },
  }

  -- Dasboard Nvim Theme
  use {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
  }

  -- LSP
  use {
    'VonHeikemen/lsp-zero.nvim',
    branch = 'v3.x',
    requires = {
             --- LSP Support
             {'williamboman/mason.nvim'},
             {'williamboman/mason-lspconfig.nvim'},
             {'neovim/nvim-lspconfig'},
             
             -- Autocompletion
             {'hrsh7th/nvim-cmp'},
             {'hrsh7th/cmp-nvim-lsp'},
             {'hrsh7th/cmp-buffer'},
             {'hrsh7th/cmp-path'},
             {'hrsh7th/cmp-cmdline'},
             {'hrsh7th/nvim-cmp'},
             
             --Snippet
             {'L3MON4D3/LuaSnip'},
        }
  }
end)
