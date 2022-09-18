local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost packer_init.lua source <afile> | PackerSync
  augroup end
]]

if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
	vim.fn.execute('!git clone https://github.com/wbthomason/packer.nvim ' .. install_path)
end

-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
	return
end

-- Have packer use a popup window
packer.init {
	display = {
		open_fn = function()
			return require("packer.util").float { border = "rounded" }
		end,
	},
}

vim.cmd [[
  augroup Packer
    autocmd!
    autocmd BufWritePost init.lua PackerCompile
  augroup end
]]

require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	use 'morhetz/gruvbox'
	use {
		'nvim-lualine/lualine.nvim',
		requires = { 'kyazdani42/nvim-web-devicons', opt = true }
	}
	use 'lukas-reineke/indent-blankline.nvim'
	use 'akinsho/toggleterm.nvim'
	use 'norcalli/nvim-colorizer.lua'
	use {
	  'lewis6991/gitsigns.nvim',
	  -- tag = 'release' -- To use the latest release
	}
	use 'nvim-treesitter/nvim-treesitter'
	use 'windwp/nvim-autopairs'
	use 'onsails/lspkind.nvim'
	use {
		'kyazdani42/nvim-tree.lua',
		requires = {
			'kyazdani42/nvim-web-devicons', -- optional, for file icon
		}
	}

	use {
		'nvim-telescope/telescope.nvim',
		requires = { { 'nvim-lua/plenary.nvim' } }
	}

	-- cmp plugins
	use "hrsh7th/nvim-cmp" -- The completion plugin
	use "hrsh7th/cmp-buffer" -- buffer completions
	use "hrsh7th/cmp-path" -- path completions
	use "hrsh7th/cmp-cmdline" -- cmdline completions
	use "saadparwaiz1/cmp_luasnip" -- snippet completions
	use "hrsh7th/cmp-nvim-lsp"

	-- snippets
	use "L3MON4D3/LuaSnip" --snippet engine

	-- use 'goolord/alpha-nvim'

	-- LSP
	use 'nvim-lua/plenary.nvim'
	use "neovim/nvim-lspconfig" -- enable LSP
	use "williamboman/nvim-lsp-installer" -- simple to use language server installer
	use "tamago324/nlsp-settings.nvim" -- language server settings defined in json for
	use "jose-elias-alvarez/null-ls.nvim" -- for formatters and linters
end)
