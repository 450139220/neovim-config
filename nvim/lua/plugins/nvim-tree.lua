vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

require('nvim-web-devicons').setup {
  override = {
    lua = {
      icon = "", -- 自定义 Lua 文件图标
      color = "#51a0cf",
      name = "Lua"
    },
    txt = {
      icon = "", -- 自定义 Text 文件图标
      color = "#6d8086",
      name = "Text"
    },
    md = {
      icon = "", -- Markdown 文件图标
      color = "#ffaf00",
      name = "Markdown"
    },
    -- 根据需要继续添加其他文件类型
  },
  default = true -- 启用默认图标
}

-- 配置 nvim-tree
require('nvim-tree').setup {
  renderer = {
    icons = {
      glyphs = {
        default = "", -- 默认文件图标
        symlink = "", -- 符号链接图标
        folder = {
          default = "", -- 默认文件夹图标
          open = "", -- 打开文件夹图标
          empty = "", -- 空文件夹图标
          empty_open = "", -- 打开空文件夹图标
          symlink = "", -- 符号链接文件夹
        },
      },
    },
  },
}
