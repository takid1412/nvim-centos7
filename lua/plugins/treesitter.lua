return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- 2. Optional: Ensure specific parsers are installed
    opts.ensure_installed = opts.ensure_installed or {}
    vim.list_extend(opts.ensure_installed, { "nginx" })
  end,
}
