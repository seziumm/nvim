require('lualine').setup {
  options = {
    icons_enabled = true,
    theme = 'auto', -- 'rose-pine'
  },
  sections = {
    lualine_a = {
      {
        'filename',
        path = 1,
      }
    }
  }
}
