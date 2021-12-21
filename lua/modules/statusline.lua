local gps = require 'nvim-gps'

function user_host()
	return vim.fn.getenv('USER') .. '@' .. vim.fn.hostname()
end

require('lualine').setup {
	options = {
		theme = 'tokyonight',
		disabled_filetypes = { 'NvimTree' },
		component_separators = '~',
		section_separators = '',
		icons_enabled = false		
	},

	sections = {
		lualine_a = { { 'mode', fmt = string.upper } },
		lualine_b = { { 'branch', fmt = string.upper } },
		lualine_c = { 
			{ 'filename' },
			{ gps.get_location, condition = gps.is_available }, 
			{ 'diff' } 
		},

		lualine_x = { 
			{ user_host }, 
			{ 'diagnostics' },
		},

		lualine_y = { { 'filetype' } },
		lualine_z = { { 'location' } }
	}
}
