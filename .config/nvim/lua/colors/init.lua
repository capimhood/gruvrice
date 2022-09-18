--Set colorscheme
vim.o.termguicolors = true
vim.cmd[[colorscheme gruvbox]]

--LSP gruvbox
vim.cmd[[highlight DiagnosticError gui=bold guifg=#fb4934 guibg=NONE]]
vim.cmd[[highlight DiagnosticHint gui=bold guifg=#83a3a5 guibg=NONE]]
vim.cmd[[highlight DiagnosticSignError gui=bold guifg=#fb4934 guibg=#3c3836]]
vim.cmd[[highlight DiagnosticSignInfo gui=bold guifg=#83a3a5 guibg=#3c3836]]
vim.cmd[[highlight DiagnosticSignWarn gui=bold guifg=#fabd2f guibg=#3c3836]]
vim.cmd[[highlight DiagnosticWarn gui=bold guifg=#fabd2f guibg=NONE]]
vim.cmd[[highlight Comment gui=italic]]
vim.cmd[[highlight Function gui=bolditalic guifg=#b8bb26]]
vim.cmd[[highlight TSFunction gui=bolditalic guifg=#b8bb26]]
vim.cmd[[highlight DiagnosticHint gui=bold guifg=#83a3a5 guibg=NONE]]

--gray
vim.cmd[[highlight CmpItemAbbrDeprecated guibg=NONE gui=strikethrough guifg=#1d2021]]
--blue]]
vim.cmd[[highlight CmpItemAbbrMatch guibg=NONE guifg=#83a3a5]]
vim.cmd[[highlight CmpItemAbbrMatchFuzzy guibg=NONE guifg=#83a3a5]]
--light blue]]
vim.cmd[[highlight CmpItemKindVariable guibg=NONE guifg=#fe8019]]
vim.cmd[[highlight CmpItemKindInterface guibg=NONE guifg=#fe8019]]
vim.cmd[[highlight CmpItemKindText guibg=NONE guifg=#fe8019]]
--pink]]
vim.cmd[[highlight CmpItemKindFunction guibg=NONE guifg=#d3869b]]
vim.cmd[[highlight CmpItemKindMethod guibg=NONE guifg=#d3869b]]
--front]]
vim.cmd[[highlight CmpItemKindKeyword guibg=NONE guifg=#fabd2f]]
vim.cmd[[highlight CmpItemKindProperty guibg=NONE guifg=#fabd2f]]
vim.cmd[[highlight CmpItemKindUnit guibg=NONE guifg=#fabd2f]]
--Visual mode
vim.cmd[[highlight Visual gui=bold guifg=NONE guibg=#83a3a5]]

