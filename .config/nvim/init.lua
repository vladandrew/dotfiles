require "opts"
require "launch"

vim.keymap.set("n", "<Space>", "<Nop>", { silent = true, remap = false })
vim.g.mapleader = " "

spec("plugins.colorscheme")
spec("plugins.telescope")
spec("plugins.treesitter")
spec("plugins.neotree")
spec("plugins.undotree")
spec("plugins.lsp-zero")
spec("plugins.mason")
spec("plugins.lualine")

require "plugins.lazy"
require "keymaps"
