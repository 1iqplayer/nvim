vim.cmd('set number')
vim.cmd('set relativenumber')
vim.cmd('set shiftwidth=4')
vim.cmd('set noswapfile')
vim.cmd('colorscheme cyberdream')

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
-- split to right
vim.o.splitright = true
vim.o.splitbelow = false

vim.cmd('autocmd FileType make setlocal noexpandtab')
vim.cmd('autocmd FileType make setlocal shiftwidth=4')
vim.cmd('autocmd FileType make setlocal tabstop=4')
vim.cmd('autocmd FileType make setlocal softtabstop=0')

