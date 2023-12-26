vim.api.nvim_command('set shiftwidth=2')
vim.api.nvim_command('set number')

--Basic
require('core.plugins')
require('core.colors')
	
-- Plugins
require('plugins.treesitter')
require('plugins.lsp')
require('plugins.cmp')
require('plugins.autopairs')
