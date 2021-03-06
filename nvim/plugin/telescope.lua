local actions = require('telescope.actions')
local builtin = require('telescope.builtin')
local themes = require('telescope.themes')

require('telescope').setup({
  defaults = {
    color_devicons = true,
    file_previewer = require'telescope.previewers'.vim_buffer_cat.new,
    grep_previewer = require'telescope.previewers'.vim_buffer_vimgrep.new,
    qflist_previewer = require'telescope.previewers'.vim_buffer_qflist.new,
    
    mappings = {
      n = {
        ["<C-q>"] = actions.send_to_qflist,
      },
      i = {
        ["<C-q>"] = actions.send_to_qflist,
      },
    },
  }
})
require('telescope').load_extension('fzy_native')

local function set_leader_map(key, fn_name)
  vim.api.nvim_set_keymap(
    'n',
    '<leader>'..key,
    string.format('<cmd>lua require("wraithy/telescope")["%s"]()<CR>', fn_name),
    {noremap = true}
  )
end

set_leader_map('f', 'find_files')
set_leader_map('F', 'find_files_shorten_path')
set_leader_map('d', 'find_config_files')
set_leader_map('R', 'grep_string_fuzzy')
set_leader_map('r', 'grep_string_exact')
set_leader_map('b', 'buffers')
set_leader_map('h', 'help_tags')
