local opt = vim.opt

opt.tabstop = 2 -- Number of spaces tabs count for
opt.mouse = "a" -- Enable mouse mode
opt.termguicolors = true -- True color support
opt.autowrite = true -- Enable auto write
opt.number = true -- Print line number
opt.cursorline = true -- Enable highlighting of the current line
opt.expandtab = true -- Use spaces instead of tabs
opt.laststatus = 3 -- global statusline
opt.completeopt = "menu,menuone,noselect"
opt.pumblend = 10 -- Popup blend
opt.pumheight = 10 -- Maximum number of entries in a popup
opt.shiftround = true -- Round indent
opt.shiftwidth = 2 -- Size of an indent
opt.showmode = false -- Dont show mode since we have a statusline
if not vim.env.SSH_TTY then
opt.clipboard = "unnamedplus" -- Sync with system clipboard
end

opt.smartcase = true -- Don't ignore case with capitals
opt.smartindent = true -- Insert indents automatically

-- 
-- opt.conceallevel = 2 -- Hide * markup for bold and italic, but not markers with substitutions
-- opt.confirm = true -- Confirm to save changes before exiting modified buffer
-- opt.formatoptions = "jcroqlnt" -- tcqj
-- opt.grepformat = "%f:%l:%c:%m"
-- opt.grepprg = "rg --vimgrep"
-- opt.ignorecase = true -- Ignore case
-- opt.inccommand = "nosplit" -- preview incremental substitute
-- opt.list = true -- Show some invisible characters (tabs...
-- opt.relativenumber = true -- Relative line numbers
-- opt.scrolloff = 4 -- Lines of context
-- opt.sessionoptions = { "buffers", "curdir", "tabpages", "winsize", "help", "globals", "skiprtp", "folds" }
-- opt.shortmess:append({ W = true, I = true, c = true, C = true })
-- opt.sidescrolloff = 8 -- Columns of context
-- opt.signcolumn = "yes" -- Always show the signcolumn, otherwise it would shift the text each time
-- opt.spelllang = { "en" }
-- opt.splitbelow = true -- Put new windows below current
-- opt.splitkeep = "screen"
-- opt.splitright = true -- Put new windows right of current
-- if not vim.g.vscode then
--   opt.timeoutlen = 300 -- Lower than default (1000) to quickly trigger which-key
-- end
-- opt.undofile = true
-- opt.undolevels = 10000
-- opt.updatetime = 200 -- Save swap file and trigger CursorHold
-- opt.virtualedit = "block" -- Allow cursor to move where there is no text in visual block mode
-- opt.wildmode = "longest:full,full" -- Command-line completion mode
-- opt.winminwidth = 5 -- Minimum window width
-- opt.wrap = false -- Disable line wrap
-- opt.fillchars = {
--   foldopen = "",
--   foldclose = "",
--   fold = " ",
--   foldsep = " ",
--   diff = "╱",
--   eob = " ",
-- }
-- 
-- 
-- if vim.fn.has("nvim-0.10") == 1 then
--   opt.smoothscroll = true
-- end
-- 
-- -- Folding
-- --- vim.opt.foldlevel = 99
-- 
