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
-- clip boardとの連携--
opt.clipboard = "unnamedplus"

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

-- Lsp setting
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local opts = { noremap = true, silent = true, buffer = args.buf }
    vim.keymap.set('n', 'gd',           vim.lsp.buf.definition,     opts)
    vim.keymap.set('n', 'K',            vim.lsp.buf.hover,          opts)
    vim.keymap.set('n', 'gi',           vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', 'gr',           vim.lsp.buf.references,     opts)
    vim.keymap.set('n', '<C-k>',        vim.lsp.buf.signature_help, opts)
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
    vim.keymap.set('n', '<leader>rn',   vim.lsp.buf.rename,         opts)
    vim.keymap.set('n', '<leader>f',    function() vim.lsp.buf.format({ async = true }) end, opts)
    vim.keymap.set('n', '<leader>d',    vim.diagnostic.open_float,  opts)
    vim.keymap.set('n', '[d',           vim.diagnostic.goto_prev,   opts)
    vim.keymap.set('n', ']d',           vim.diagnostic.goto_next,   opts)
  end,
})

vim.diagnostic.config({
  virtual_text     = { prefix = '●' },
  signs            = true,
  underline        = true,
  update_in_insert = false,
  severity_sort    = true,
})

