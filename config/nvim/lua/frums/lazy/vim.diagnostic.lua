vim.lsp.config("lua_ls", {
        settings = {
                Lua = {
                        diagnostics = {
                                globals = {"vim","hl"}}}}})
return {
        vim.diagnostic.config({ virtual_text = true})
}
