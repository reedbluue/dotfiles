local t = require 'nvim-treesitter.configs'

t.setup {
  ensure_installed = { 'lua', 'css', 'html' },

  auto_install = false,

  highlight = {
    enable = true,
  },

  indent = { enable = true },
}
