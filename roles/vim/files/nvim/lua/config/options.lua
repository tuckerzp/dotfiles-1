-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

vim.loader.enable()

vim.opt.mouse = "a"
vim.opt.backup = true
vim.opt.undofile = true
vim.opt.backupdir:remove(".")
vim.opt.spelllang = "en"
vim.opt.autowrite = true
vim.opt.clipboard = ""

-- Appearance
vim.opt.number = true
vim.opt.relativenumber = false
vim.opt.signcolumn = "number"
vim.opt.scrolloff = 5
vim.opt.splitright = true
vim.opt.wrap = false
vim.opt.inccommand = "split"
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.opt.cmdheight = 0
vim.opt.colorcolumn = "100"
vim.opt.shortmess:append({ W = true, I = true, c = true })
vim.opt.showmode = false
vim.opt.cursorline = true

-- Tabs and stuff
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.smartindent = true

-- Nicer search
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Performance Settings
vim.opt.hidden = true
vim.opt.updatetime = 300

-- Disable builtins plugins
local disabled_built_ins = {
  "netrw",
  "netrwPlugin",
  "netrwSettings",
  "netrwFileHandlers",
  "gzip",
  "zip",
  "zipPlugin",
  "tar",
  "tarPlugin",
  "getscript",
  "getscriptPlugin",
  "vimball",
  "vimballPlugin",
  "2html_plugin",
  "logipat",
  "rrhelper",
  "spellfile_plugin",
  "matchit",
}

for _, plugin in pairs(disabled_built_ins) do
  vim.g["loaded_" .. plugin] = 1
end
