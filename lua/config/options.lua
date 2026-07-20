vim.opt.number = true
vim.opt.cursorline = true
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4
vim.opt.scrolloff = 17

vim.diagnostic.config {
    update_in_insert = false,
    severity_sort = true,
    float = { border = 'rounded', source = 'if_many' },
    underline = { severity = { min = vim.diagnostic.severity.WARN } },

    signs = true,
    virtual_text = true,
    virtual_lines = false,

    -- Auto open float so you can read errors when jumping with '[d' and ']d'
    jump = {
        on_jump = function(_, bufnr)
            vim.diagnostic.open_float {
                bufnr = bufnr,
                scope = 'cursor',
                focus = false,
            }
        end,
    }
}
