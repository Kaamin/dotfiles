vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")

--install package manager,set location for plugin definitions
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
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

local plugins = 
{
  {"folke/tokyonight.nvim", lazy = false, priority = 1000, opts = {},}

}

local opts = 
{

}

require("lazy").setup(plugins, opts)
require("tokyonight").setup({style = "storm"})

vim.cmd[[colorscheme tokyonight]]
