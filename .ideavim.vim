source ~/.config/nvim/.idea-lazy.vim

let mapleader = " "

"" -- Suggested options --
" Show a few lines of context around the cursor. Note that this makes the
" text scroll if you mouse-click near the start or end of the window.
set scrolloff=5

" Do incremental searching.
set incsearch
set nohlsearch

" Don't use Ex mode, use Q for formatting.
map Q gq

" --- Enable IdeaVim plugins https://jb.gg/ideavim-plugins

" Highlight copied text
Plug 'machakann/vim-highlightedyank'
" Commentary plugin
Plug 'tpope/vim-commentary'
" Surround
Plug 'tpope/vim-surround'



" -- Map IDE actions to IdeaVim -- https://jb.gg/abva4t
"" Map \r to the Reformat Code action
"map \r <Action>(ReformatCode)

"" Map <leader>d to start debug
"map <leader>d <Action>(Debug)

"" Map \b to toggle the breakpoint on the current line
"map \b <Action>(ToggleLineBreakpoint)

"set nu
set relativenumber
set smartindent
"set functiontextobj
set ideajoin
set clipboard=^ideaput
set editorconfig

nnoremap <leader>; :s/$/;/<CR>
nnoremap <C-d> "_dd
nnoremap <leader>o o<Esc>
nnoremap <leader>O O<Esc>

vnoremap <leader>p "_dP
vnoremap <C-d> "_D<Esc>
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

inoremap <C-d> <Esc>"_dd^i

" Copy Paste command
vnoremap <C-c> "+y

nnoremap <C-v> "+P
inoremap <C-v> <Esc>"+pa
vnoremap <C-v> d"+Pa

" Move cursor when select
inoremap <C-Left> <C-o>b
inoremap <C-Right> <C-o>w
inoremap <C-Up> <C-o>{
inoremap <C-Down> <C-o>}

" Indent
nnoremap <Tab> >>
vnoremap <Tab> >gv

"nnoremap <C-e> :action RecentFiles<CR>
"vnoremap <C-e> <Esc>:action RecentFiles<CR>
"inoremap <C-e> <Esc>:action RecentFiles<CR>

"nnoremap <C-o> :action FileStructurePopup<CR>
"nnoremap <C-f> :action Replace<CR>

"nnoremap <C-h> :action FindInPath<CR>
"vnoremap <C-h> "+y<Esc>:action FindInPath<CR>

"nmap gd :action GotoDeclaration<CR>

sethandler <C-/> a:ide
sethandler <C-r> a:ide
sethandler <C-s> a:ide

" nnoremap <C-/> :action CommentByLineComment<CR>
" inoremap <C-/> <Esc>:action CommentByLineComment<CR>
" vnoremap <C-/> <Esc>:action CommentByLineComment<CR>



