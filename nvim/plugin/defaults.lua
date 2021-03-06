local util = require('wraithy/util')

-- General {{{
vim.opt.termguicolors = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.mouse = 'a'
vim.opt.hidden = true
vim.opt.inccommand = 'split' -- show the effects of a substitute command in a separate window
vim.opt.spelllang = 'en_gb'
vim.o.completeopt = "menuone,noselect" -- required by nvim-compe

vim.g.python_host_prog = '/Users/andrew/venv/neovim2/bin/python'
vim.g.nvim_venv = '/Users/andrew/venv/neovim'
vim.g.python3_host_prog = vim.g.nvim_venv..'/bin/python'
-- }}}
-- Editor look & feel {{{
vim.opt.cursorline = true
vim.opt.showmode = false -- use lightline instead
vim.opt.listchars = 'eol:¬,tab:¦ ,trail:~,extends:>,precedes:<'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.wrap = false
vim.opt.showbreak = '↪'
-- }}}
-- Search {{{
vim.opt.hlsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
-- }}}
-- Tabs/spaces {{{
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.tabstop = 4
-- }}}
-- History and backup {{{
vim.opt.backupcopy = 'yes'
vim.opt.undofile = true
vim.opt.undolevels = 1000
vim.opt.undoreload = 10000
vim.opt.updatetime = 500 -- the default is 4 seconds

-- Ensure these dirs exist before trying to use them
vim.opt.directory = util.ensure_directory_exists('~/.config/nvim/swap//')
vim.opt.undodir = util.ensure_directory_exists('~/.config/nvim/undo//')
--- }}}
-- vim: foldmethod=marker
