nnoremap <silent> <C-h> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateLeft()<cr>
nnoremap <silent> <C-j> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateDown()<cr>
nnoremap <silent> <C-k> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateUp()<cr>
nnoremap <silent> <C-l> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateRight()<cr>
nnoremap <silent> <C-\> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateLastActive()<cr>
nnoremap <silent> <C-Space> :lua require'nvim-tmux-navigation'.NvimTmuxNavigateNext()<cr>


augroup vimrc_syntax_elixir
  autocmd User ProjectionistDetect
  \ call projectionist#append(getcwd(),
  \ {
  \    'lib/*.ex':  {
  \       'skeleton': 'mod',
  \       'alternate': 'test/{}_test.exs'
  \    },
  \    'test/*_test.exs':  {
  \      'alternate': 'lib/{}.ex',
  \      'skeleton': 'case'
  \     },
  \ })
augroup END
