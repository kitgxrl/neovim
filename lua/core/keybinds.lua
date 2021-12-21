local nest = require 'nest'

vim.g.mapleader = ' '

-- Window Movement

nest.applyKeymaps {
    {
        '<leader>',
        {
            -- Terminals

            {
                't',
                {
                    { 'h', '<cmd>execute 15 .. "new +term"<cr>' },
                    { 'v', '<cmd>vnew +term<cr>' },
                },
            },

            -- Telescope

            {
                'f',
                {
                    { 'f', '<cmd>Telescope find_files<cr>' },
                    { 'b', '<cmd>Telescope buffers<cr>' },
                    { 'l', '<cmd>Telescope live_grep<cr>' },
                    {
                        'g',
                        {
                            { 'b', '<cmd>Telescope git_branches<cr>' },
                            { 'c', '<cmd>Telescope git_commits<cr>' },
                            { 's', '<cmd>Telescope git_status<cr>' },
                        },
                    },
                },
            },

            {
                'e',
                {
                    { 'o', '<cmd>NvimTreeToggle<cr>' },
                    { 'f', '<cmd>NvimTreeFocus<cr>' },
                },
            },
        },
    },
    -- Window movement

    {
        '<C-',
        {
            { 'h>', '<C-w>h' },
            { 'j>', '<C-w>j' },
            { 'k>', '<C-w>k' },
            { 'l>', '<C-w>l' },
        },
    },

    { mode = 't', {
        { '<ESC>', '<C-\\><C-n>' },
    } },
}
