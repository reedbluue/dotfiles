local plugins = {
  {
    'folke/which-key.nvim',
    event = 'VeryLazy',
    opts = {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    },
    keys = {
      {
        '<leader>?',
        function()
          require('which-key').show { global = false }
        end,
        desc = 'Buffer Local Keymaps (which-key)',
      },
    },
  },
  {
    'mellow-theme/mellow.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      vim.cmd 'colorscheme mellow'
    end,
  },
  {
    'nvim-treesitter/nvim-treesitter',
    event = { 'BufReadPost', 'BufNewFile' },
    cmd = { 'TSInstall', 'TSUpdate' },
    build = ':TSUpdate',
    config = function()
      require 'configs.treesitter'
    end,
  },
  {
    'brenoprata10/nvim-highlight-colors',
    event = { 'BufReadPost', 'BufNewFile' },
    opts = function()
      return require 'configs.highlight-colors'
    end,
  },
  {
    'nvim-tree/nvim-tree.lua',
    cmd = { 'NvimTreeToggle', 'NvimTreeFocus' },
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    opts = function()
      return require 'configs.nvimtree'
    end,
  },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    cmd = { 'Telescope' },
    dependencies = { 'nvim-lua/plenary.nvim', 'nvim-tree/nvim-web-devicons' },
    opts = function()
      return require 'configs.telescope'
    end,
    config = function(_, opts)
      local telescope = require 'telescope'
      telescope.setup(opts)
      for _, ext in ipairs(opts.extensions_list) do
        telescope.load_extension(ext)
      end
    end,
  },
  {
    'williamboman/mason.nvim',
    lazy = false,
    opts = function()
      return require 'configs.mason'
    end,
  },
  {
    'stevearc/conform.nvim',
    event = 'BufWritePre',
    cmd = { 'ConformInfo' },
    opts = function()
      return require 'configs.conform'
    end,
    dependencies = { 'mason-conform.nvim' },
  },
  {
    'zapling/mason-conform.nvim',
    event = 'VeryLazy',
    dependencies = { 'conform.nvim' },
    opts = function()
      return require 'configs.conform'
    end,
  },
  {
    'neovim/nvim-lspconfig',
    lazy = false,
    config = function()
      require('configs.lspconfig').init()
    end,
    dependencies = {
      {
        'williamboman/mason-lspconfig.nvim',
        dependencies = { 'mason.nvim' },
        opts = function()
          return require 'configs.mason-lspconfig'
        end,
      },
    },
  },
  {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    opts = function()
      return require 'configs.cmp'
    end,
    dependencies = {
      {
        'saadparwaiz1/cmp_luasnip',
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-buffer',
        'hrsh7th/cmp-path',
      },
      {
        'L3MON4D3/LuaSnip',
        version = '2.3.0',
        opts = function()
          return require 'configs.luasnip'
        end,
        config = function(_, opts)
          require('luasnip').config.set_config(opts)
          require('luasnip.loaders.from_vscode').lazy_load()
        end,
        dependencies = {
          {
            'rafamadriz/friendly-snippets',
            config = function()
              require 'configs.snippets'
            end,
          },
        },
      },
    },
  },
  {
    'mfussenegger/nvim-lint',
    event = { 'BufWritePost', 'BufNewFile' },
    config = function()
      return require 'configs.lint'
    end,
  },
  {
    'rshkarin/mason-nvim-lint',
    event = 'VeryLazy',
    opts = function()
      return require 'configs.mason-lint'
    end,
    dependencies = { 'nvim-lint' },
  },
}

return plugins
