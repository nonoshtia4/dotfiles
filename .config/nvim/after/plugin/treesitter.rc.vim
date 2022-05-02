if !exists('g:loaded_nvim_treesitter')
  finish
endif


lua << EOF
require 'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
    },
  indent = {
    enable = false,
    disable = {},
    },
  ensure_installed = {
    "tsx",
    "toml",
    "fish",
    "php",
    "json",
    "yaml",
    "swift",
    "python",
    "go",
    "html",
    "scss"
    },
  autotag = {
    enable = true,
    }
  }

local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }
EOF

