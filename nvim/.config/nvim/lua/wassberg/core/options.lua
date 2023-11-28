local opt = vim.opt
local o = vim.o
local api = vim.api

vim.scriptencoding = 'utf-8'
opt.encoding = 'utf-8'
opt.fileencoding = 'utf-8'

o.relativenumber = true
o.number = true
opt.laststatus = 2
opt.title = true
opt.autoindent = true
opt.smartindent = true
opt.hlsearch = true
opt.backup = false
opt.showcmd = true
opt.cmdheight = 0
opt.laststatus = 2
opt.expandtab = true
opt.scrolloff = 10
opt.shell = 'fish'
opt.backupskip = { '/tmp/*', '/private/tmp/*' }
opt.inccommand = 'split'
opt.ignorecase = true -- Case insensitive searching UNLESS /C or capital in search
opt.smarttab = true
opt.breakindent = true
opt.shiftwidth = 4
opt.tabstop = 4
opt.wrap = false -- No Wrap lines
opt.backspace = { 'start', 'eol', 'indent' }
opt.path:append { '**' } -- Finding files - Search down into subfolders
opt.wildignore:append { '*/node_modules/*' }
o.termguicolors = true
api.nvim_set_option("clipboard","unnamed")
api.nvim_set_keymap('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})
api.nvim_set_keymap('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})

vim.cmd("au ColorScheme * hi Normal ctermbg=none guibg=none")
vim.cmd("highlight LineNr guifg=#BAC2DE")

-- Fillchars
opt.fillchars = {
  vert = "│",
  fold = "⠀",
  eob = " ",
  msgsep = "‾",
  foldopen = "▾",
  foldsep = "│",
  foldclose = "▸",
}
