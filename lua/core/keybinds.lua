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

            { mode = 't', {
                { '<ESC>', '<C-\\><C-n>' },
            } },

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

    -- Trouble management

    {
        '<C-t>',
        {
            { 'q', '<cmd>Trouble quickfix<cr>' }, -- Quickfix list
            { 'x', '<cmd>Trouble workspace_diagnostics<cr>' }, -- Errors, warnings, etc
            { 'd', '<cmd>Trouble lsp_definitions<cr>' }, -- Jump to definition
            { 't', '<cmd>TodoTrouble<cr>' }, -- List TODOs/FIXMEs/NOTEs/HACKs/etc
        },
    },

    -- Git
    {
        'g',
        {
            { 'g', '<cmd>execute 15 .. "Git"<cr>' },
            { 'c', '<cmd>Git commit<cr>' },
            { 'p', '<cmd>Git push<cr>' },
        },
    },
}
