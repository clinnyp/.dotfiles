-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	use({
		"nvim-telescope/telescope.nvim",
		tag = "0.1.0",
		-- or                            , branch = '0.1.x',
		requires = { { "nvim-lua/plenary.nvim" } },
	})
	use({ "ellisonleao/gruvbox.nvim" })
	use("nvim-treesitter/nvim-treesitter", { run = ":TSUpdate" })
	use({ "mbbill/undotree" })
	use({ "tpope/vim-fugitive" })
	use({ "ThePrimeagen/harpoon" })
	use({
		"VonHeikemen/lsp-zero.nvim",
		requires = {
			-- LSP Support
			{ "neovim/nvim-lspconfig" },
			{ "williamboman/mason.nvim" },
			{ "williamboman/mason-lspconfig.nvim" },

			-- Autocompletion
			{ "hrsh7th/nvim-cmp" },
			{ "hrsh7th/cmp-buffer" },
			{ "hrsh7th/cmp-path" },
			{ "saadparwaiz1/cmp_luasnip" },
			{ "hrsh7th/cmp-nvim-lsp" },
			{ "hrsh7th/cmp-nvim-lua" },

			-- Snippets
			{ "L3MON4D3/LuaSnip" },
			{ "rafamadriz/friendly-snippets" },
		},
	})
	use({
		"windwp/nvim-autopairs",
		config = function()
			require("nvim-autopairs").setup({})
		end,
	})
	use("andweeb/presence.nvim")
	use({
		"nvim-tree/nvim-tree.lua",
		requires = {
			"nvim-tree/nvim-web-devicons", -- optional, for file icons
		},
		tag = "nightly", -- optional, updated every week. (see issue #1193)
	})
	use({ "xiyaowong/nvim-transparent" })
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "kyazdani42/nvim-web-devicons", opt = true },
	})
	use({ "akinsho/bufferline.nvim", tag = "v3.*", requires = "nvim-tree/nvim-web-devicons" })
	use({
		"akinsho/toggleterm.nvim",
		tag = "*",
		config = function()
			require("toggleterm").setup()
		end,
	})
	use({
		"folke/trouble.nvim",
		requires = "nvim-tree/nvim-web-devicons",
		config = function()
			require("trouble").setup({
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			})
		end,
	})
	use({
		"numToStr/Comment.nvim",
		config = function()
			require("Comment").setup()
		end,
	})
	use({ "jose-elias-alvarez/null-ls.nvim" })
	use({ "windwp/nvim-ts-autotag" })
	use({ "rose-pine/neovim", as = "rose-pine" })
	-- use({ "onsails/lspkind.nvim" })
	use({ "lukas-reineke/indent-blankline.nvim" })
	use({
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()
		end,
	})
	use({ "NvChad/nvim-colorizer.lua" })
end)
