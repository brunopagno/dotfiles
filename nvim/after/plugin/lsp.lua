-- LSP
local lspconfig = require('lspconfig')

-- null ls
local null_ls = require('null-ls')

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

local sources = {
    formatting.prettier,

    formatting.standardrb,
    diagnostics.standardrb
}

null_ls.setup({
    sources = sources,
})

-- Setup servers

-- gem install solargraph
lspconfig.solargraph.setup({})

-- npm i -g typescript typescript-language-server prettier
lspconfig.tsserver.setup({})

-- go install golang.org/x/tools/gopls@latest
lspconfig.gopls.setup({})

