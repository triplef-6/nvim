-- load defaults i.e lua_lsp
require("nvchad.configs.lspconfig").defaults()

local lspconfig = require "lspconfig"

-- EXAMPLE
local servers = {
    "html", -- html
    "cssls", -- css
    "jdtls", -- java
    "bashls", -- bash
    "eslint", -- js, ts
    "ts_ls", -- ts, js
    "clangd", -- c++
    "intelephense", -- php
    -- "astg" -- c, c++, rust, go, java, python, c#, javascript, jsx, typescript, html, css, kotlin, dart, lua
    -- "javals",
    -- "bash-language-server",
    -- "java-debug-adapter",
    -- "lua-language-server",
    -- "stylua",
    -- "vscode_java_decompiler"
}
local nvlsp = require "nvchad.configs.lspconfig"

-- lsps with default config
for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
  }
end

lspconfig.ast_grep.setup { -- c, c++, rust, go, java, python, c#, javascript, jsx, typescript, html, css, kotlin, dart, lua
    on_attach = nvlsp.on_attach,
    on_init = nvlsp.on_init,
    capabilities = nvlsp.capabilities,
}
-- configuring single server, example: typescript
-- lspconfig.ts_ls.setup {
--   on_attach = nvlsp.on_attach,
--   on_init = nvlsp.on_init,
--   capabilities = nvlsp.capabilities,
-- }
