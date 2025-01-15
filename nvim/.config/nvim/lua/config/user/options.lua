local opt = vim.opt

-- Enable relative line numbers
opt.nu = true
opt.rnu = true

-- Set tabs to 4 spaces
opt.tabstop = 4
opt.softtabstop = 4
opt.expandtab = true

-- Enable auto indenting and set to spaces
opt.smartindent = true
opt.shiftwidth = 4

-- Disable text wrap
opt.wrap = false

-- Enable mouse mode
opt.mouse = "a"

-- Set persistent sign column
opt.signcolumn = "yes"

-- Enable using system clipboard
opt.clipboard = "unnamed,unnamedplus"

-- Set highlight for cursor line
opt.cursorline = true

-- Keep 8 lines above or below cursor
opt.scrolloff = 8

-- Set column line
opt.colorcolumn = "80"
