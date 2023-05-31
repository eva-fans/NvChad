local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- defaults 
        "vim",
        "lua",

        -- web dev 
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        -- "vue", "svelte",

       -- low level
        "c",
        "cpp",
        "zig",
      },
    },
  },
  {
   "williamboman/mason.nvim",
   -- opts = {
   --    ensure_installed = {
   --      "clangd",
   --      "lua-language-server",
   --      "html-lsp",
   --      "prettier",
   --      "stylua",
   --      "texlab"
   --    },
   --  },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    lazy = false,
--    cmd = {"LspInstall", "LspUninstall"},
    opts = function()
      return require "custom.configs.mason-lspconfig"
    end,
    config = function(_, opts)
      require('mason-lspconfig').setup(opts)
    end,
  },
  -- In order to modify the `lspconfig` configuration:
  {
    "neovim/nvim-lspconfig",
    dependencies = {
     "jose-elias-alvarez/null-ls.nvim",
     config = function()
       require "custom.configs.null-ls"
     end,
    },
    -- prevent lspconfig from configuring
    config = function()
    --  require "plugins.configs.lspconfig"
    end,
  },
  {
    "ethanholz/nvim-lastplace",
    lazy=false,
    config = function ()
      require'nvim-lastplace'.setup{}
    end,
  },
  {
    "edkolev/tmuxline.vim"
  },
}

return plugins

