-- Fat cursor
vim.opt.guicursor = ""

-- Line number / relative line number
vim.opt.nu = true
vim.opt.relativenumber = true


-- 4 space indenting
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Line wrapping off
vim.opt.wrap = false

-- No vim backup but undotree has access to long history (many days)
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- Incremental search highlight
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- I like good colors
vim.opt.termguicolors = true

--Always have 18 liens of scroll showing
vim.opt.scrolloff = 16
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

-- Fast update
vim.opt.updatetime = 50

--colorline at the right side
vim.opt.colorcolumn = "160"
