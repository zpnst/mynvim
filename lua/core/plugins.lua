local fn = vim.fn

local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"

if fn.empty(fn.glob(install_path)) > 0 then
	fn.system({
		"git",
		"clone",
		"--depth",
		"1",
		"https://github.com/wbthomason/packer.nvim",
		install_path,
	})
	vim.cmd([[packadd packer.nvim]])
end

vim.cmd([[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]])


require("packer").startup(function(use)
	use "wbthomason/packer.nvim"

	use "tpope/vim-surround"
	use "tpope/vim-commentary"
	use "vim-airline/vim-airline"
	use "ap/vim-css-color"
	use "rafi/awesome-vim-colorschemes"
	use "ryanoasis/vim-devicons"
	use "tc50cal/vim-terminal"
	use "terryma/vim-multiple-cursors"
	use "preservim/tagbar"
	use { "neoclide/coc.nvim", branch = "release" }

	use { "kabouzeid/nvim-jellybeans", requires = "rktjmp/lush.nvim" }

	use {
		'nvim-telescope/telescope.nvim', 
		tag = '0.1.8',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", 
			"MunifTanjim/nui.nvim",
		}
	}
	

	if PACKER_BOOTSTRAP then
		require("packer").sync()
	end
end)


