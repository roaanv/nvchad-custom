local plugins = {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "html",
        "css",
        "javascript",
        "c",
        "markdown",
        "markdown_inline",
        "python",
        "go",
        "rust",
        "c_sharp",
        "typescript",
        "proto",
        "terraform",
        "toml",
        "tsx",
        "xml",
        "yaml",
        "make",
        "json",
        "bash",
        "java",
        "kotlin",
        "query",
      }
    }
  },
  {
    "neovim/nvim-lspconfig",
    config = function ()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "marksman",
        "misspell",

        -- lua
        "lua-language-server",
        "stylua",

        -- web dev
        "css-lsp",
        "html-lsp",
        "typescript-language-server",
        "deno",

        -- docker
        "dockerfile-language-server",
        "docker-compose-language-service",

        -- rust
        "rust-analyzer",
        "rustfmt",

        -- go
        "gopls",
        "glint",
        "go-debug-adapter",
        "goimports",
        "goimports-reviser",
        "golangci-lint",
        "golangci-lint-langserver",
        "golines",
        "gotests",
        "gotestsum",

        -- python
        "pyright",
        "flake8",
        "black",
        "mypy",
        "pydocstyle",
        "pylint",
        "pyre",
        "autoflake",
        "autopep8",
        "python-lsp-server",

        -- yaml
        "terraform-ls",
        "tflint",
        "yaml-language-server",
        "yamlfmt",
        "yamllint",

        -- sql
        "sqlfluff",
        "sqls",

        -- C#
        "omnisharp",
      }
    }
  },
  {
    "nvim-tree/nvim-tree.lua",
    git = {
      enable = true,
    },
    renderer = {
      highlight_git = true,
      icons = {
        show = {
          git = true
        }
      }
    }
  },
  {
    "neovim/nvim-lspconfig",

     dependencies = {
       "jose-elias-alvarez/null-ls.nvim",
       config = function()
         require "custom.configs.null-ls"
       end,
     },
   
     config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
     end,
  },
  {
    "nvim-telescope/telescope.nvim",
    opts = {
      pickers = {
        buffers = {
            ignore_current_buffer = true,
            sort_lastused = true,
        },
      },
    }
  }
}

return plugins
