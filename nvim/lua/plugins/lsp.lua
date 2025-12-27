return {
  "neovim/nvim-lspconfig",
  config = function()
    local lsp = require("lspconfig")

    lsp.intelephense.setup({})
    lsp.tsserver.setup({})
    lsp.tailwindcss.setup({})
  end,
}
