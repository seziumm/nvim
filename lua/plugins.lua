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

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'rose-pine/neovim'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-lualine/lualine.nvim' -- barra sotto

  use 'nvim-tree/nvim-web-devicons' -- aggiunge le icone per nvimtree e lualine

  use 'nvim-treesitter/nvim-treesitter' -- better syntax

use {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  requires = { {'nvim-lua/plenary.nvim'} }
}


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
