local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup(
	{ "folke/which-key.nvim", 
	{ "folke/neoconf.nvim", cmd = "Neoconf" },
  	"folke/neodev.nvim",
	{ 'nvim-treesitter/nvim-treesitter' },
	{ 'joshdick/onedark.vim' },
	{ 'robert-oleynik/clangd-nvim' },
	{ 'neovim/nvim-lspconfig' },
	{ 'hrsh7th/nvim-cmp' },
	{ 'hrsh7th/cmp-buffer' },
	{ 'hrsh7th/cmp-path' },
	{ 'hrsh7th/cmp-cmdline' },
	{ 'saadparwaiz1/cmp_luasnip' },
	{ 'L3MON4D3/LuaSnip'},
	{ 'rafamadriz/friendly-snippets'},
	{ 'windwp/nvim-autopairs'}

})
