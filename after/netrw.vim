
syn match netrwPy		"\(\S\+ \)*\S\+\.py\>"					contains=netrwTreeBar,@NoSpell
syn match netrwGo		"\(\S\+ \)*\S\+\.go\>"					contains=netrwTreeBar,@NoSpell
syn match netrwYaml	    "\(\S\+ \)*\S\+\.\%(yaml\|yml\)\>"		contains=netrwTreeBar,@NoSpell
syn match netrwJson		"\(\S\+ \)*\S\+\.json\>"				contains=netrwTreeBar,@NoSpell
syn match netrwJs		"\(\S\+ \)*\S\+\.js\>"					contains=netrwTreeBar,@NoSpell
hi netrwHdr	     term=NONE cterm=NONE gui=NONE                        guifg=SeaGreen1
hi netrwLex	     term=NONE cterm=NONE gui=NONE                        guifg=SeaGreen1
hi netrwYacc	 term=NONE cterm=NONE gui=NONE                        guifg=SeaGreen1
hi netrwLib	     term=NONE cterm=NONE gui=NONE ctermfg=14             guifg=yellow
hi netrwObj	     term=NONE cterm=NONE gui=NONE ctermfg=12             guifg=red
hi netrwTilde	 term=NONE cterm=NONE gui=NONE ctermfg=12             guifg=red
hi netrwTmp	     term=NONE cterm=NONE gui=NONE ctermfg=12             guifg=red
hi netrwTags	 term=NONE cterm=NONE gui=NONE ctermfg=12             guifg=red
hi netrwSymLink  term=NONE cterm=NONE gui=NONE ctermfg=220 ctermbg=27 guifg=grey60
hi netrwCompress term=NONE cterm=NONE gui=NONE ctermfg=10             guifg=green      ctermbg=0 guibg=black
hi netrwData	 term=NONE cterm=NONE gui=NONE ctermfg=9              guifg=blue       ctermbg=0 guibg=black
hi netrwDoc	     term=NONE cterm=NONE gui=NONE ctermfg=220 ctermbg=27 guifg=OliveDrab1           guibg=black
hi netrwPy	     term=NONE cterm=NONE gui=NONE ctermfg=220 ctermbg=27 guifg=SeaGreen             guibg=black
hi netrwGo	     term=NONE cterm=NONE gui=NONE ctermfg=220 ctermbg=27 guifg=SpringGreen          guibg=black
hi netrwYaml	 term=NONE cterm=NONE gui=NONE ctermfg=220 ctermbg=27 guifg=DarkSeaGreen         guibg=black
hi netrwJson	 term=NONE cterm=NONE gui=NONE ctermfg=220 ctermbg=27 guifg=LawnGreen            guibg=black
hi netrwJs	     term=NONE cterm=NONE gui=NONE ctermfg=220 ctermbg=27 guifg=DarkOliveGreen       guibg=black
