local status, ts = pcall(require, "nvim-treesitter.configs")
if (not status) then return end

ts.setup {
      -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,


  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "markdown",
    "markdown_inline",
    "tsx",
    "typescript",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "css",
    "html",
    "lua"
  },
  context_commentstring = {
    enable         = true,
    enable_autocmd = false,
  },
      additional_vim_regex_highlighting = false,
    --incremental incremental_selection with treesitter
     incremental_selection = {
    enable = true,
    keymaps = {
      init_selection = "gnn", -- set to `false` to disable one of the mappings
      node_incremental = "gni",
      scope_incremental = "gnc",
      node_decremental = "gnm",
    },
  },

}

