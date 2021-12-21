local gps = require 'nvim-gps'

function user_host()
    return vim.fn.getenv 'USER' .. '@' .. vim.fn.hostname()
end

vim.cmd [[ hi StatusLine guibg=bg guifg=bg ]]
vim.cmd [[ hi StatusLineNC guibg=bg guifg=bg ]]

require('lualine').setup {
    options = {
        theme = 'tokyonight',
        disabled_filetypes = { 'NvimTree', 'Trouble', 'fugitive' },
        component_separators = '~',
        section_separators = '',
        icons_enabled = false,
    },

    sections = {
        lualine_a = {
            { 'mode', fmt = string.upper, color = { gui = 'bold' } },
        },

        lualine_b = {
            { 'branch', fmt = string.upper, color = { gui = 'bold' } },
        },

        lualine_c = {
            'filename',
            { gps.get_location, cond = gps.is_available },
            'diff',
        },

        lualine_x = {
            user_host,
            { 'diagnostics', color = { gui = 'italic,bold' } },
        },

        lualine_y = {
            { 'filetype', color = { gui = 'bold' } },
        },
        lualine_z = {
            { 'location', color = { gui = 'bold' } },
        },
    },
}
