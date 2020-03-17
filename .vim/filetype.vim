"syntax highlight customizations

if exists("did_load_filetypes")
    finish
endif
autocmd FileType lammps setlocal commentstring=#\ %s
augroup filetypedetect
    au! BufRead,BufNewFile in.* setfiletype lammps
    au! BufRead,BufNewFile *.in setfiletype lammps
augroup END
