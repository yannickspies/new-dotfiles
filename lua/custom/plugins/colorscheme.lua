return {
  -- Add the Dracula colorscheme
  {
    'Mofiqul/dracula.nvim',
    config = function()
      -- Set the colorscheme after the plugin is loaded
      vim.cmd [[colorscheme dracula]]
    end,
  },
}
