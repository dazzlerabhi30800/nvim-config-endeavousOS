" Enable Mouse
set mouse=a

" Set Editor Font
let s:fontsize = 11

"GuiFont! Liga Source Code Pro:h11

function! AdjustFontSize(amount)
  let s:fontsize = s:fontsize+a:amount
  :execute "GuiFont! Hack Nerd Font:h" . s:fontsize
endfunction

" noremap <C-ScrollWheelUp> :call AdjustFontSize(1)<CR>
" noremap <C-ScrollWheelDown> :call AdjustFontSize(-1)<CR>
" noremap <A-+> :call AdjustFontSize(1)<CR>
" noremap <C--> :call AdjustFontSize(-1)<CR>
" inoremap <C-ScrollWheelUp> <Esc>:call AdjustFontSize(1)<CR>a
" inoremap <C-ScrollWheelDown> <Esc>:call AdjustFontSize(-1)<CR>a

" Disable GUI Tabline
if exists(':GuiTabline')
    GuiTabline 0
endif

 if exists(':GuiLinespace')
     GuiLinespace 0
 endif

" Disable GUI Popupmenu
if exists(':GuiPopupmenu')
    GuiPopupmenu 0
endif

" Enable GUI ScrollBar
if exists(':GuiScrollBar')
    GuiScrollBar 0
endif


" Right Click Context Menu (Copy-Cut-Paste)
nnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>
inoremap <silent><RightMouse> <Esc>:call GuiShowContextMenu()<CR>
xnoremap <silent><RightMouse> :call GuiShowContextMenu()<CR>gv
snoremap <silent><RightMouse> <C-G>:call GuiShowContextMenu()<CR>gv
