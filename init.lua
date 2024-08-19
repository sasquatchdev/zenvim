require("zen.lazy").install()

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

require("zen.lazy").setup()
