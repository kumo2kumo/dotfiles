return {
  -- 東京の夜をイメージしたカラースキーム
  {
    "folke/tokyonight.nvim",
    lazy = false,    -- 起動時にすぐ読み込む
    priority = 1000, -- 最初に読み込むように優先度を上げる
    config = function()
      vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
