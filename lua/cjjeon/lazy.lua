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

require("lazy").setup({
	{
		"bluz71/vim-nightfly-guicolor",
		priority = 1000,
		config = function()
			-- load the colorscheme here
			vim.cmd([[colorscheme nightyfly]])
		end,
	},
})

