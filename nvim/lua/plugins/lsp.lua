return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
      vim.lsp.config('*', {
        capabilities = require('cmp_nvim_lsp').default_capabilities(),
      })
      vim.lsp.enable('rust_analyzer')
      -- 将来: vim.lsp.enable('lua_ls')
      -- 将来: vim.lsp.enable('ts_ls')
    end,
  },
}

