local status_ok, _ = pcall(require, "lspconfig")

if not status_ok then
  return
end

require 'plg.lsp.lsp-installer'
require("plg.lsp.handlers").setup()
require 'plg.lsp.null-ls'
