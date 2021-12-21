local lsp = require 'lspconfig'

local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

lsp.rust_analyzer.setup {
    capabilities = capabilities,
}

lsp.nimls.setup {
    capabilities = capabilities,
}

lsp.ccls.setup {
    capabilities = capabilities,
    init_options = {
        cache = {
            directory = '.ccls-cache',
        },
    },
}
