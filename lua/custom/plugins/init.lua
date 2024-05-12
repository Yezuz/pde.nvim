-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  -- themes
  require 'custom.plugins.catppuccin',
  require 'custom.plugins.gruvbox-baby',
  require 'custom.plugins.rose-pine',
  require 'custom.plugins.dracula',
  require 'custom.plugins.tokyonight',
  -- development experience
  require 'custom.plugins.lint',
  require 'custom.plugins.gitsigns',
  require 'custom.plugins.nvim-autopairs',
  require 'custom.plugins.neo-tree',
  require 'custom.plugins.tree-sitter',
  require 'custom.plugins.mini',
  require 'custom.plugins.todo-comments',
  require 'custom.plugins.nvim-cmp',
  require 'custom.plugins.dashboard-nvim',
  require 'custom.plugins.conform',

  {
    'mbbill/undotree',
  },

  {
    'folke/noice.nvim',
    event = 'VeryLazy',
    opts = {},
    dependencies = {
      'MunifTanjim/nui.nvim',
      'rcarriga/nvim-notify',
    },
  },

  {
    {
      'akinsho/toggleterm.nvim',
      version = '*',
      config = true,
    },
  },

  {
    'christoomey/vim-tmux-navigator',
    lazy = false,
  },

  {
    'romgrk/barbar.nvim',
    dependencies = {
      'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
      'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    init = function()
      vim.g.barbar_auto_setup = false
    end,
    opts = {
      -- lazy.nvim will automatically call setup for you. put your options here, anything missing will use the default:
      animation = true,
      insert_at_start = true,
    },
    version = '^1.0.0',
  },

  {
    'Bekaboo/dropbar.nvim',
    -- optional, but required for fuzzy finder support
    dependencies = {
      'nvim-telescope/telescope-fzf-native.nvim',
    },
  },

  {
    's1n7ax/nvim-window-picker',
    name = 'window-picker',
    event = 'VeryLazy',
    version = '2.*',
    config = function()
      require('window-picker').setup()
    end,
  },

  -- RUST
  {
    'mrcjkb/rustaceanvim',
    version = '^4', -- Recommended
    lazy = false,
    ft = { 'rust' },
  },

  {
    'saecki/crates.nvim',
    event = { 'BufRead Cargo.toml' },
    config = function()
      require('crates').setup()
    end,
  },

  -- DOTNET
  {
    'iabdelkareem/csharp.nvim',
    dependencies = {
      'williamboman/mason.nvim', -- Required, automatically installs omnisharp
      'mfussenegger/nvim-dap',
      'Tastyep/structlog.nvim', -- Optional, but highly recommended for debugging
    },
    config = function()
      require('mason').setup() -- Mason setup must run before csharp
      require('csharp').setup()
    end,
  },

  -- JAVA
  {
    'mfussenegger/nvim-jdtls',
  },

  {
    'nvim-java/nvim-java',
    dependencies = {
      'nvim-java/nvim-java-refactor',
      'nvim-java/lua-async-await',
      'nvim-java/nvim-java-core',
      'nvim-java/nvim-java-test',
      'nvim-java/nvim-java-dap',
      'MunifTanjim/nui.nvim',
      'neovim/nvim-lspconfig',
      'mfussenegger/nvim-dap',
      {
        'williamboman/mason.nvim',
        opts = {
          registries = {
            'github:nvim-java/mason-registry',
            'github:mason-org/mason-registry',
          },
        },
      },
    },
  },
}
