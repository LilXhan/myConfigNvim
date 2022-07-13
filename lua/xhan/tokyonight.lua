require('lualine').setup {
  options = {
    -- ... your lualine config
    theme = 'tokyonight'
    -- Example config in Lua
  }
}
-- vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }
vim.g.tokyonight_style = "night"
vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }
vim.cmd[[colorscheme tokyonight]]


