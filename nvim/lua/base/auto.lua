local autocmd = vim.api.nvim_create_autocmd -- Create autocmmand

-- compile latex files on write
autocmd('BufWritePost', { pattern = '*.tex', command = 'silent! execute "!latexmk -f -pdf %" | redraw!' })

-- load and make folds
-- autocmd( 'BufLeave' , { pattern = '*.*', command = 'mkview' } )
-- autocmd( 'BufEnter' , { pattern = '*.*', command = 'loadview' } )
