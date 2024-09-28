local default_config = require 'configs.default-lspconfig'

local M = {}

M.servers = {
  ['lua_ls'] = {
    settings = {
      Lua = {
        diagnostics = {
          enable = false,
        },
        workspace = {
          library = {
            vim.fn.expand '$VIMRUNTIME/lua',
            vim.fn.expand '$VIMRUNTIME/lua/vim/lsp',
            vim.fn.stdpath 'data' .. '/lazy/lazy.nvim/lua/lazy',
          },
          maxPreload = 100000,
          preloadFileSize = 10000,
        },
      },
    },
  },
  ['html'] = {},
  ['tailwindcss'] = {},
  ['ts_ls'] = {},
}

M.install_ignore = {}

M.init = function()
  for lsp, setup in pairs(M.servers) do
    default_config(lsp, setup)
  end
end

return M
