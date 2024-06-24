require'nvim-treesitter.configs'.setup({
    -- A list of parser names, or "all" (the five listed parsers should always be installed)
    ensure_installed = { "c", "lua", "vim", "python", "rust", "bash", "make"},

    -- Install parsers synchronously (only applied to `ensure_installed`)
    sync_install = false,

    auto_install = true,

    -- List of parsers to ignore installing (or "all")

    ---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
    -- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

    highlight = {
	enable = true,
    },
})
