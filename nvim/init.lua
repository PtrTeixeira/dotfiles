require("config.lazy")

vim.o.expandtab = true
vim.o.showcmd = true
vim.o.shiftwidth = 2
vim.o.number = true
vim.o.relativenumber = true

vim.cmd[[colorscheme tokyonight-moon]]

vim.lsp.config['rustls'] = {
  cmd = { 'rust-analyzer' },
  filetypes = { 'rust' },
  root_markers = { 'Cargo.toml' },
}

vim.lsp.enable('rustls')
