-- Source global configs that should be *immediately loaded* here
-- Things like disabling netrw should go here

-- Source non-plugin configs here (keymaps, vim options, etc.)
require("custom.options")
require("custom.keymaps")

--[[ Start Neovim Plugin Section ]] --
-- DO NOT TOUCH, LazyVim Bootstrapping
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

-- Source plugin "declarations"
require("lazy").setup("custom.plugins")

-- Source colorscheme config here
-- require("custom.configs.$FILENAME_OF_COLORSCHEME_CONFIG")
-- vim.cmd("colorscheme $NAME")

-- Source per-plugin config here
-- require("custom.configs.$FILENAME_OF_PLUGIN_CONFIG")
