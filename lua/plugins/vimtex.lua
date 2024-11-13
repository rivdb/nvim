return {
  "lervag/vimtex",
  lazy = false, -- lazy-loading will disable inverse search
  config = function()
    -- Disable `K` mapping as it conflicts with LSP hover
    vim.g.vimtex_mappings_disable = { ["n"] = { "K" } }

    -- Set the quickfix method based on Zathura availability
    vim.g.vimtex_quickfix_method = vim.fn.executable("zathura") == 1 and "pplatex" or "latexlog"

    -- Set Zathura as the PDF viewer
    vim.g.vimtex_view_method = "zathura"

    -- Optional: Configure Zathura for inverse search (requires setting up in Zathura config as well)
    vim.g.vimtex_view_general_options = [[--synctex-forward @line:@col:@tex --no-focus-follow]]
  end,
  keys = {
    { "<localLeader>l", "", desc = "+vimtex" },
  },
}
