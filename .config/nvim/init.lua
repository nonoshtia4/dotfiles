if vim.loader then
  vim.loader.enable()
end

_G.dd = function(...)
  require("util.debug").dump(...)
end
vim.print = _G.dd
-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- telekasten
require("telekasten").setup({
  home = vim.fn.expand("~/zettelkasten"), -- Put the name of your notes directory here
  dailies = vim.fn.expand("~/zettelkasten/daily"), -- Put the name of your notes directory here
  weeklies = vim.fn.expand("~/zettelkasten/weekly"), -- Put the name of your notes directory here
  templates = vim.fn.expand("~/zettelkasten/templates"), -- Put the name of your notes directory here
  template_new_note = vim.fn.expand("~/zettelkasten/templates/basenote.md"),
  template_new_daily = vim.fn.expand("~/zettelkasten/templates/daily.md"),
  template_new_weekly = vim.fn.expand("~/zettelkasten/templates/weekly.md"),
})
-- Launch panel if nothing is typed after <leader>z
vim.keymap.set("n", "<leader>z", "<cmd>Telekasten panel<CR>")

-- Most used functions
vim.keymap.set("n", "<leader>zf", "<cmd>Telekasten find_notes<CR>")
vim.keymap.set("n", "<leader>zg", "<cmd>Telekasten search_notes<CR>")
vim.keymap.set("n", "<leader>zd", "<cmd>Telekasten goto_today<CR>")
vim.keymap.set("n", "<leader>zz", "<cmd>Telekasten follow_link<CR>")
vim.keymap.set("n", "<leader>zn", "<cmd>Telekasten new_note<CR>")
vim.keymap.set("n", "<leader>zc", "<cmd>Telekasten show_calendar<CR>")
vim.keymap.set("n", "<leader>zb", "<cmd>Telekasten show_backlinks<CR>")
vim.keymap.set("n", "<leader>zI", "<cmd>Telekasten insert_img_link<CR>")

-- Call insert link automatically when we start typing a link
vim.keymap.set("i", "[[", "<cmd>Telekasten insert_link<CR>")
