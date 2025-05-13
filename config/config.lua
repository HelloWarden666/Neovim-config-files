-- 设置 utf-8 编码
vim.g.encoding = "UTF-8"
vim.o.fileencoding = "utf-8"

-- jkhl 移动时光标周围保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8

-- 显示行号
vim.o.number = true

-- 使用相对行号
vim.wo.relativenumber = true

-- 高亮所在行
vim.wo.cursorline = true

-- 启用语法高亮
vim.cmd('syntax on')

-- 显示左侧图标指示列
vim.wo.signcolumn = "yes"

-- 右侧参考线
vim.wo.colorcolumn = "160"

-- 设置缩进
vim.o.tabstop = 4
vim.bo.tabstop = 4
vim.o.softtabstop = 4
vim.o.shiftround = true

-- >> << 时移动长度
vim.o.shiftwidth = 4
vim.bo.shiftwidth = 4

-- 空格替代
vim.o.expandtab = true

-- 新行对齐当前行
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true

-- 搜索不要高亮
vim.o.hlsearch = false

vim.o.incsearch = true

-- 命令模式行高
vim.o.cmdheight = 1

-- 自动加载外部修改
vim.o.autoread = true
vim.bo.autoread = true

-- 禁止折行
vim.wo.wrap = false

-- 光标在行首尾时<Left><Right>可以跳到下一行
vim.o.whichwrap = "<,>,[,]"

-- 允许隐藏被修改过的buffer
vim.o.hidden = true

-- 启用鼠标
vim.o.mouse = 'a'

-- 禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false

-- smaller updatetime
vim.o.updatetime = 300
 
vim.o.timeoutlen = 500
 
vim.o.splitbelow = true
vim.o.splitright = true

-- 自动补全不自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"

-- 不可见字符的显示，这里只把空格显示为一个点
vim.o.list = false
vim.o.listchars = "space:·,tab:>-"
 
vim.o.wildmenu = true
 
vim.o.shortmess = vim.o.shortmess .. "c"

-- 补全显示10行
vim.o.pumheight = 10
vim.o.clipboard = "unnamedplus"

-- 设置主题颜色
vim.cmd('colorscheme desert')

-- 按输入字符收索
vim.opt.incsearch = true

-- 不高亮显示匹配项
vim.opt.hlsearch = false

-- 搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true

-- 向右打开新的水平分割
vim.opt.splitright = true

-- 打开新的垂直Split Bottom
vim.opt.splitbelow = true

-- 使用系统剪切板
vim.opt.clipboard = 'unnamedplus'

-- 水平高亮显示光标下方的光标行
vim.opt.cursorline = true

-- lazyvim 插件管理器
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)
