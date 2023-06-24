-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
-- 
local status, packer = pcall(require, "packer")
if not status then
	print("Packer is not installed")
	return
end

-- Reloads Neovim after whenever you save plugins.lua
vim.cmd([[
    augroup packer_user_config
      autocmd!
     autocmd BufWritePost packer.lua source <afile> | PackerSync
  augroup END
]])


vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.1',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }
    use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
use('nvim-treesitter/playground')
use('ThePrimeagen/harpoon')
use('mbbill/undotree')

use('tpope/vim-fugitive')
use {
    -- LSP Support
    'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
	  requires = {
    {'neovim/nvim-lspconfig'},             -- Required
    {                                      -- Optional
      'williamboman/mason.nvim',
      run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end,
    },
    {'williamboman/mason-lspconfig.nvim'}, -- Optional

    -- Autocompletion
    {'hrsh7th/nvim-cmp',config = function ()
    require'cmp'.setup {
    snippet = {
      expand = function(args)
        require'luasnip'.lsp_expand(args.body)
      end},     -- Required
        sources = {
      { name = 'luasnip' },
      -- more sources
    },
  }
  end},
            { 'saadparwaiz1/cmp_luasnip' },
    {'hrsh7th/cmp-nvim-lsp'}, -- Required
    {"L3MON4D3/LuaSnip",-- follow latest release.
	-- install jsregexp (optional!).
	build = "make install_jsregexp",
       -- after = 'nvim-cmp',
    config = function () require("luasnip") end,
    requires = {'rafamadriz/friendly-snippets'}},}}
use(
    'numToStr/Comment.nvim'
    )
    use {
  'nvim-lualine/lualine.nvim',
  requires = { 'nvim-tree/nvim-web-devicons', opt = true }
}
use('nvim-tree/nvim-web-devicons')


--icons theme
use {
  'glepnir/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      -- config
    }
  end,
  }
 use{'barrett-ruth/live-server.nvim'}
 use({
    "kylechui/nvim-surround",
    tag = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
        })
    end
})
use{'alvan/vim-closetag'}

use ({"ziontee113/color-picker.nvim",
    config = function()
        require("color-picker")
    end,
})
    use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {} end
}
    use( "lukas-reineke/lsp-format.nvim")
    use ('voldikss/vim-floaterm')
use('KabbAmine/vCoolor.vim')
use('brenoprata10/nvim-highlight-colors')

use({
    "kdheepak/lazygit.nvim",
    -- optional for floating window border decoration
    requires = {
        "nvim-lua/plenary.nvim",config = function()
        require("telescope").load_extension("lazygit")
    end,
    },
})
use('mg979/vim-visual-multi')

end)
