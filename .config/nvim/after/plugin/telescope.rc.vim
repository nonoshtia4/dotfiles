if !exists('g:loaded_telescope') | finish | endif

nnoremap <silent> ;f <cmd>lua require('terescope.builtin').find_files()<cr>
nnoremap <silent> ;r <cmd>lua require('terescope.builtin').live_grep()<cr>
nnoremap <silent> \\ <cmd>lua require('terescope.builtin').buffers()<cr>
nnoremap <silent> ;; <cmd>lua require('terescope.builtin').help_tags()<cr>

lua << EOF
function terescope_buffer_dir()
  return vim.fn.expand('%:p:h')
end

local telescope = require('telescope')
local actions = require('telescope.actions')
-- Global remapping
------------------------------
telescope.setup{
  defaults = {
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}
EOF

