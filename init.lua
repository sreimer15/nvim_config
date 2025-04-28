vim.g.mapleader = " "
vim.g.maplocalleader = "\\"
require("core.options")
require("core.keymaps")
require("core.snippets")

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

-- Setup lazy.nvim
require("lazy").setup({
	spec = {
		require("plugins.lsp"),
		require("plugins.autocompletion"),
		require("plugins.treesitter"),
		require("plugins.indent-blankline"),
		require("plugins.oil"),
		require("plugins.none-ls"),
		require("plugins.telescope"),
		require("plugins.comment"),
		require("plugins.harpoon"),
		require("plugins.gruvbox"),
		require("plugins.training"),
		require("plugins.vim-matchup"),
	},
	-- Configure any other settings here. See the documentation for more details.
	-- colorscheme that will be used when installing plugins.
	install = { colorscheme = { "habamax" } },
	-- automatically check for plugin updates
	checker = { enabled = true },
})

vim.o.background = "dark" -- or "light" for light mode
vim.cmd([[colorscheme gruvbox]])
