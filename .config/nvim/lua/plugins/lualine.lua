local M = {
				'nvim-lualine/lualine.nvim',
				dependencies = { 'nvim-tree/nvim-web-devicons' }
}

function M.config()
				require('lualine').setup {
								options = { theme = 'auto',
												section_separators = { left = '', right = '' },
												component_separators = { left = '', right = '' }}
				}
end

return M
