vim.g.mapleader = ' '

function map(mode, lhs, rhs, opts)
  local options = { noremap=false, silent=true }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Source current lua file
map('n', '<leader>X', ':luafile %')
-- Lazy interface
map('n', '<leader>l', ':Lazy<CR>')
-- Fast saving wit <leader> and s
map('n', '<leader>s', ':w<CR>')
-- Leave insert mode
map('i', 'jj', '<C-C>')
-- Open files
map('n', '<leader>fe', ':Ex<CR>')
map('n', '<leader>ff', ':Telescope find_files<CR>')
map('n', '<leader>fs', ':Telescope live_grep<CR>')
-- tabs
map('n', '<leader>t', ':tabnew <CR>')
map('n', '<leader>r', ':tabclose<CR>')
map('n', '<C-D>', ':tabprevious<CR>')
map('n', '<C-F>', ':tabnext<CR>')
-- project
map('n', '<leader>b', ':lua neo_build()<CR>')
map('n', '<leader>B', ':lua neo_build_run()<CR>')
-- telescope
map('n', '<leader>b', ':lua neo_build()<CR>')
map('n', '<leader>b', ':lua neo_build()<CR>')
-- window splitting and quitting
map('n', '<leader>j', ':split<CR>')
map('n', '<leader>k', ':vsplit<CR>')
map('n', '<leader>q', ':q<CR>')
map('n', '<leader>Q', ':q!<CR>')
-- lsp
map('n', '<leader>=', '=ap')
map('n', '<leader>L', ':LspRestart<CR>')
--dap
map('n', '<F5>', ':lua require"dap".continue()<CR>')
map('n', '<F4>', ':lua require"dap".terminate ()<CR>')
map('n', '<F6>', ':lua require"dap".step_over()<CR>')
map('n', '<F7>', ':lua require"dap".step_into()<CR>')
map('n', '<F8>', ':lua require"dap".step_out()<CR>')
map('n', '<leader>v', ':lua require"dap".toggle_breakpoint()<CR>')
