setlocal formatoptions=1
setlocal noexpandtab
set ignorecase
set incsearch
set complete+=s
set formatprg=par
set autoindent
set tabstop=4

" Poniższe dwie linijki, jeśli chcę, żeby tabulację zastępowały znaki spacji
set expandtab
set softtabstop=4
set shiftwidth=4
setlocal wrap
setlocal linebreak
set number relativenumber
set tw=80
map <f4> :e /home/kislowodzk/Notatki/ToDo.md<enter>
map <C-f> ggvG$
nnoremap <C-k> gk
nnoremap <C-j> gj
nnoremap <C-h> h
nnoremap <C-l> l
set display+=lastline
set backspace=indent,eol,start
set scrolloff=8
nnoremap <space> :w<cr>

" Pozazuj białe znaki
set listchars=tab:→\ ,space:·,nbsp:␣,trail:•,eol:¶
nnoremap <f6> :set list<enter>

" Nie pokazuj białych znaków
nnoremap <f5> :set nolist<enter>

" Żeby nie dodawał podwójnej spacji po kropce na końcu zdania
set nojoinspaces
set clipboard^=unnamed,unnamedplus
set showmatch
set hlsearch

autocmd BufRead,BufNewFile   *.txt set fo+=tawc
autocmd BufRead,BufNewFile   *.md set fo+=tawc



" ============================================================================
" 
" letter	 meaning when present in 'formatoptions'
" 
" t	Auto-wrap text using textwidth
" c	Auto-wrap comments using textwidth, inserting the current comment
" 	leader automatically.
" r	Automatically insert the current comment leader after hitting
" 	<Enter> in Insert mode.
" o	Automatically insert the current comment leader after hitting 'o' or
" 	'O' in Normal mode.
" q	Allow formatting of comments with "gq".
" 	Note that formatting will not change blank lines or lines containing
" 	only the comment leader.  A new paragraph starts after such a line,
" 	or when the comment leader changes.
" w	Trailing white space indicates a paragraph continues in the next line.
" 	A line that ends in a non-white character ends a paragraph.
" a	Automatic formatting of paragraphs.  Every time text is inserted or
" 	deleted the paragraph will be reformatted.  See |auto-format|.
" 	When the 'c' flag is present this only happens for recognized
" 	comments.
" n	When formatting text, recognize numbered lists.  This actually uses
" 	the 'formatlistpat' option, thus any kind of list can be used.  The
" 	indent of the text after the number is used for the next line.  The
" 	default is to find a number, optionally followed by '.', ':', ')',
" 	']' or '}'.  Note that 'autoindent' must be set too.  Doesn't work
" 	well together with "2".
" 	Example:
" 		1. the first item
" 		   wraps
" 		2. the second item
" 2	When formatting text, use the indent of the second line of a paragraph
" 	for the rest of the paragraph, instead of the indent of the first
" 	line.  This supports paragraphs in which the first line has a
" 	different indent than the rest.  Note that 'autoindent' must be set
" 	too.  Example:
" 			first line of a paragraph
" 		second line of the same paragraph
" 		third line.
" v	Vi-compatible auto-wrapping in insert mode: Only break a line at a
" 	blank that you have entered during the current insert command.  (Note:
" 	this is not 100% Vi compatible.  Vi has some "unexpected features" or
" 	bugs in this area.  It uses the screen column instead of the line
" 	column.)
" b	Like 'v', but only auto-wrap if you enter a blank at or before
" 	the wrap margin.  If the line was longer than 'textwidth' when you
" 	started the insert, or you do not enter a blank in the insert before
" 	reaching 'textwidth', Vim does not perform auto-wrapping.
" l	Long lines are not broken in insert mode: When a line was longer than
" 	'textwidth' when the insert command started, Vim does not
" 	automatically format it.
" m	Also break at a multi-byte character above 255.  This is useful for
" 	Asian text where every character is a word on its own.
" M	When joining lines, don't insert a space before or after a multi-byte
" 	character.  Overrules the 'B' flag.
" B	When joining lines, don't insert a space between two multi-byte
" 	characters.  Overruled by the 'M' flag.
" 1	Don't break a line after a one-letter word.  It's broken before it
" 	instead (if possible).
" 
" 
" With 't' and 'c' you can specify when Vim performs auto-wrapping:
" value	action
" ""	no automatic formatting (you can use "gq" for manual formatting)
" "t"	automatic formatting of text, but not comments
" "c"	automatic formatting for comments, but not text (good for C code)
" "tc"	automatic formatting for text and comments
" 
" Note that when 'textwidth' is 0, Vim does no automatic formatting anyway (but
" does insert comment leaders according to the 'comments' option).  An exception
" is when the 'a' flag is present. |auto-format|
" 
" Note that when 'paste' is on, Vim does no formatting at all.
" 
" Note that 'textwidth' can be non-zero even if Vim never performs auto-wrapping;
" 'textwidth' is still useful for formatting with "gq".
" 
" If the 'comments' option includes "/*", "*" and/or "*/", then Vim has some
" built in stuff to treat these types of comments a bit more cleverly.
" Opening a new line before or after "/*" or "*/" (with 'r' or 'o' present in
" 'formatoptions') gives the correct start of the line automatically.  The same
" happens with formatting and auto-wrapping.  Opening a line after a line
" starting with "/*" or "*" and containing "*/", will cause no comment leader to
" be inserted, and the indent of the new line is taken from the line containing
" the start of the comment.
" E.g.:
"     /*
"      * Your typical comment.
"      */
"     The indent on this line is the same as the start of the above
"     comment.
" 
" All of this should be really cool, especially in conjunction with the new
" :autocmd command to prepare different settings for different types of file.
" 
" Some examples:
"   for C code (only format comments):
" 	:set fo=croq
"   for Mail/news	(format all, don't start comment with "o" command):
" 	:set fo=tcrq
" 
" 
" 
" Automatic formatting					*auto-format*
" 
" When the 'a' flag is present in 'formatoptions' text is formatted
" automatically when inserting text or deleting text.  This works nice for
" editing text paragraphs.  A few hints on how to use this:
" 
" - You need to properly define paragraphs.  The simplest is paragraphs that are
"   separated by a blank line.  When there is no separating blank line, consider
"   using the 'w' flag and adding a space at the end of each line in the
"   paragraphs except the last one.
" 
" - You can set the 'formatoptions' based on the type of file |filetype| or
"   specifically for one file with a |modeline|.
" 
" - Set 'formatoptions' to "aw2tq" to make text with indents like this:
" 
" 	    bla bla foobar bla
" 	bla foobar bla foobar bla
" 	    bla bla foobar bla
" 	bla foobar bla bla foobar
" 
" - Add the 'c' flag to only auto-format comments.  Useful in source code.
" 
" - Set 'textwidth' to the desired width.  If it is zero then 79 is used, or the
"   width of the screen if this is smaller.
" 
" And a few warnings:
" 
" - When part of the text is not properly separated in paragraphs, making
"   changes in this text will cause it to be formatted anyway.  Consider doing
" 
" 	:set fo-=a
" 
" - When using the 'w' flag (trailing space means paragraph continues) and
"   deleting the last line of a paragraph with |dd|, the paragraph will be
"   joined with the next one.
" 
" - Changed text is saved for undo.  Formatting is also a change.  Thus each
"   format action saves text for undo.  This may consume quite a lot of memory.
" 
" - Formatting a long paragraph and/or with complicated indenting may be slow.
" 
" ==============================================================================


