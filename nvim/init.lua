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

require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'
  -- My plugins here
  -- use 'foo1/bar1.nvim'
  -- use 'foo2/bar2.nvim'

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
	use("ibhagwan/fzf-lua")
	use("kyazdani42/nvim-web-devicons")
	use("jparise/vim-graphql")
	use("terrortylor/nvim-comment")
	use("nvim-lualine/lualine.nvim")
	use("bronson/vim-visual-star-search")
	use("lambdalisue/fern.vim")
	use("acro5piano/nvim-format-buffer")
	use("neovim/nvim-lspconfig")
	use("hrsh7th/nvim-cmp")
	use("hrsh7th/cmp-path")
	use("hrsh7th/cmp-buffer")
	use("hrsh7th/cmp-cmdline")
	use("hrsh7th/cmp-nvim-lsp")
	use("tpope/vim-surround")
	use("dcampos/nvim-snippy")
	use("dcampos/cmp-snippy")

  if packer_bootstrap then
    require('packer').sync()
  end
end)
-- require('')
-- require('startup')
-- Fern :%h -toggle -drawer
