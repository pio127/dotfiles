-- Load standard vimrc file
vim.cmd('set runtimepath^=~/.vim')
vim.cmd('let &packpath = &runtimepath')
vim.cmd('source ~/.vimrc')

-- Load custom tree-sitter grammar for org filetype
require('orgmode').setup_ts_grammar()

-- Tree-sitter configuration
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {'org'}, -- Remove this to use TS highlighter for some of the highlights (Experimental)
    additional_vim_regex_highlighting = {'org'},
  },
  ensure_installed = {'org'},
}

--require('orgmode').setup({
--  org_agenda_files = {'~/Dropbox/org/*', '~/my-orgs/**/*'},
--  org_default_notes_file = '~/Dropbox/org/refile.org',
--})
