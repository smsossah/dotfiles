require "options"
require "mappings"
require "dadbod"

-- Highlight on yank
vim.cmd([[
 augroup YankHighlight
   autocmd!
   autocmd TextYankPost * silent! lua vim.highlight.on_yank()
 augroup end
]])
--getting rid of ugly grey background tabbed background. Used "echo &tabline" and ":Telescope highlights" to do this
vim.cmd([[
 autocmd ColorScheme * highlight BufferCurrent guibg=#0d1421 guifg=white
 autocmd ColorScheme * highlight BufferCurrentSign guibg=#0d1421 guifg=None
 highlight CalendarSelect guibg=#c3d5e8"#b8ccc3
 ]])

vim.cmd [[ au BufDelete * if empty(filter(tabpagebuflist(), '!buflisted(v:val)')) && winnr('$') == 1 | exec 'Alpha' | endif ]]
