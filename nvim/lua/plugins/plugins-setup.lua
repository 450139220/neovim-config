local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins-setup.lua source <afile> | PackerSync
  augroup end
]])

return require('packer').startup(function(use)
  -- packer
  use 'wbthomason/packer.nvim'

  -- grammar highlight && rainbow bracket
  use 'nvim-treesitter/nvim-treesitter'
  use 'HiPhish/rainbow-delimiters.nvim'
  use 'windwp/nvim-ts-autotag'

  -- theme onedark
  use 'navarasu/onedark.nvim'
  -- theme kanagawa
  use 'rebelot/kanagawa.nvim'
  -- theme github
  use 'projekt0n/github-nvim-theme'


  -- status board
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }

  
  -- autopairs
  use {
    'windwp/nvim-autopairs',
    event = 'InsertEnter',
    config = function()
      require('nvim-autopairs').setup {}
    end
  }
  
  -- file tree
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-tree/nvim-web-devicons'

  -- window switch
  use('christoomey/vim-tmux-navigator')

  -- window buffer
  use {
    'akinsho/bufferline.nvim',
    tag = '*',
    requires = 'nvim-tree/nvim-web-devicons'
  }

  -- lsp && mason
  use {
    'williamboman/mason.nvim',
    'williamboman/mason-lspconfig.nvim',
    'neovim/nvim-lspconfig'
  }

  -- autocomplete
  use('hrsh7th/nvim-cmp')
  use('hrsh7th/cmp-nvim-lsp')
  use('L3MON4D3/LuaSnip')
  use('saadparwaiz1/cmp_luasnip')
  use('rafamadriz/friendly-snippets')
  use('hrsh7th/cmp-path')
  -- cmp-css
  use('roginfarrer/cmp-css-variables')

  -- comment
  use 'numToStr/Comment.nvim'

  -- rust
  use 'rust-lang/rust.vim'
  use 'simrat39/rust-tools.nvim'

  -- css color
  use 'norcalli/nvim-colorizer.lua'

  if packer_bootstrap then
    require('packer').sync()
  end
end)
