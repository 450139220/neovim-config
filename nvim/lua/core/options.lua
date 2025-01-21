local opt = vim.opt

-- font
-- opt.guifont = 'JetBrainsMono Nerd Font:h12'
opt.guifont = 'UbuntuMono Nerd Font:h13'
opt.termguicolors = true

-- lines number
opt.relativenumber = true
opt.number = true

-- tabs
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true

-- prevent warp
opt.wrap = false

-- cursor line
opt.cursorline = true

-- mouse && clipboard
opt.mouse:append("a")
opt.clipboard:append("unnamedplus")

-- default window right && bottom
opt.splitright = true
opt.splitbelow = true

-- search
opt.ignorecase = true
opt.smartcase = true

-- outlook
opt.termguicolors = true
opt.signcolumn = "yes"

-- break line
opt.wrap = true
opt.linebreak = true

-- css-variables
vim.g.css_variables_files = {
  'style.css'
}
