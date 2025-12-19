return {
  "nvim-treesitter/nvim-treesitter",
  opts = function(_, opts)
    -- 1. Force nvim-treesitter to use these compilers in order
    require("nvim-treesitter.install").compilers = { 
      "/opt/rh/devtoolset-9/root/usr/bin/gcc", -- Your GCC 9 path
      "gcc",                                   -- Fallback
      "cc" 
    }
    
    -- 2. Optional: Ensure specific parsers are installed
    opts.ensure_installed = opts.ensure_installed or {}
    vim.list_extend(opts.ensure_installed, { "bash", "lua", "vim", "python" })
  end,
}
