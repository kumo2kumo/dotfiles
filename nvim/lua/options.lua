local opt = vim.opt
local key = vim.keymap

-- 行番号表示
opt.number = true
-- 検索設定
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = true
opt.incsearch = true
-- パス区切りをスラッシュに統一
opt.shellslash = true
-- shellをgit bashにする
opt.shell = [["C:\Program Files\Git\bin\bash.exe"]]
-- Esc2回で検索ハイライトを消す
key.set('n', '<Esc><Esc>', '<cmd>nohlsearch<CR>')
-- 折り返し行でも見たまま移動する
key.set('n', 'j', 'gj')
key.set('n', 'k', 'gk')
-- ターミナルモードで Esc を押すとノーマルモードに戻る
key.set('t', '<Esc>', [[<C-\><C-n>]])

-- ビジュアル設定
opt.cursorline = true
opt.showmode = true
