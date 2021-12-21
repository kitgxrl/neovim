require('bufferline').setup {
    options = {
        offsets = {
            { filetype = 'NvimTree', text = '', text_align = 'right' },
        },
        show_buffer_icons = false,
        show_buffer_close_icons = false,
        show_close_icon = false,
        diagnostics = 'nvim_lsp',
    },
}
