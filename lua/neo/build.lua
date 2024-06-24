function neo_build_run()
    local filetype = vim.api.nvim_buf_get_option(0, 'filetype')
    print('filetype: ', filetype)
    if filetype == "cpp" then
	vim.api.nvim_out_write(vim.fn.system('make -j8 run'))
    end
end
function neo_build()
    local filetype = vim.api.nvim_buf_get_option(0, 'filetype')
    print('filetype: ', filetype)
    if filetype == "cpp" then
	vim.api.nvim_out_write(vim.fn.system('make -j8'))
    end
end
