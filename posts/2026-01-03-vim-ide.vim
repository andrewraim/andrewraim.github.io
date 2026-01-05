" Andrew Raim
" vimrc for post '2026-01-03-vim-ide'

function! SendToTerm(content)
	let tl = term_list()
	if len(tl) == 0
		echom "No terminal buffer found"
		return
	endif

	let term_buf_nr = tl[0]
	if bufexists(term_buf_nr) && getbufvar(term_buf_nr, '&buftype') ==# 'terminal'
		call term_sendkeys(term_buf_nr, a:content)
	else
		echom "No terminal buffer found"
	endif
endfunction

function! FileTypeToTerm(vert)
	if &filetype == 'r'
		let cmd = "R\n"
	elseif &filetype == 'julia'
		let cmd = "julia\n"
	elseif &filetype == 'python'
		let cmd = "python\n"
	else
		let cmd = ""
	endif

	if a:vert
		execute "vertical terminal! " . cmd
	else
		execute "terminal! " . cmd
	endif

	execute "normal! \<c-w>x"
endfunction


let mapleader = " "

nnoremap <silent> <leader><leader> :call SendToTerm(getline('.')."\n")<cr>g$
\:call search('\S', 'W')<cr>:nohl<cr>
xnoremap <expr> <silent> <leader><leader> mode() ==# 'V' ?
\ 'y :<c-u>call SendToTerm(@")<cr>`>' :
\ 'y :<c-u>call SendToTerm(@" . "\n")<cr>`>'

nnoremap <silent> <leader>th :call FileTypeToTerm(v:false)<cr>
nnoremap <silent> <leader>tv :call FileTypeToTerm(v:true)<cr>
