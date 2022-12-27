local function map(mode, lhs, rhs, opts)
  local options = { remap = false }
  if opts then
    options = vim.tbl_extend('force', options, opts)
  end
  vim.keymap.set(mode, lhs, rhs, options)
end

_G.map = map

-- Allow switching buffers easier
map('n', 'gb', '<cmd>ls<CR>:b<Space>')
map('n', '<Tab>', '<cmd>bn<CR>')
map('n', '<S-Tab>', '<cmd>bp<CR>')

-- Keep selection after (de)indenting
map('v', '<', '<gv')
map('v', '>', '>gv')

-- Remove trailing whitespace
map('n', '<F5>', [[<cmd>let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar><CR>]])

-- These are LSP-related key mappings that are applied globally.
map('n', '<space>e', vim.diagnostic.open_float)
map('n', '<space>q', vim.diagnostic.setloclist)

-- Yank to system clipboard
map('n', '<leader>y', '"+y')
map('v', '<leader>y', '"+y')
map('n', '<leader>Y', '"+Y')
