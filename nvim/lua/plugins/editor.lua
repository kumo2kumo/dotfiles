return {
  {
    "nvim-tree/nvim-tree.lua",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- アイコンを表示するためのプラグイン
    config = function()
      require("nvim-tree").setup()
      -- スペース + e でツリーを開閉する設定
      vim.keymap.set('n', '<leader>e', ':NvimTreeToggle<CR>', { silent = true })
    end,
  },
}
