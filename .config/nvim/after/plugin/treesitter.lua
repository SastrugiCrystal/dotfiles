require'nvim-treesitter.configs'.setup {
  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "python", "java", "javascript", "rust","typescript","c", "css", "lua", "vim", "vimdoc"},
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
    -- Highlight the @foo.bar capture group with the "Identifier" highlight group
    additional_vim_regex_highlighting = false,
  },
  indent = { enable = true}
}


