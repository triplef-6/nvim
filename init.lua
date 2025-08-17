vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end
    
vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  {
    import = "plugins",
  },
    {
        'tpope/vim-fugitive'
    }
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "nvchad.autocmds"
vim.schedule(function()
  require "mappings"
end)


--Моя конфигурация

--"замена табов на пробелы
--vim.o.expandtab
--vim.o.smarttab
--"кол-во пробелов в одном табе
-- vim.o.tabstop=4
-- vim.o.softtabstop=4
-- vim.o.shiftwidth=4
-- Устанавливаем общие настройки отступов
vim.cmd([[
  augroup indent_settings
    autocmd!
    autocmd FileType * setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
  augroup END
]])

-- Настройка отступов для языков с 2 пробелами
vim.cmd([[
  augroup indent_two_spaces
    autocmd!
    autocmd FileType javascript,typescript,json,yaml,html,css,lua,ruby,markdown setlocal shiftwidth=2 tabstop=2 softtabstop=2
  augroup END
]])

-- Настройка отступов для C, C++, Java (4 пробела)
vim.cmd([[
  augroup indent_c_style
    autocmd!
    autocmd FileType c,cpp,java,go,rust,python  setlocal shiftwidth=4 tabstop=4 softtabstop=4
  augroup END
]])
--"относительная нумерация строк
vim.o.relativenumber = true

--vim.hl.on_tank { higroup='Visual', timeout=300 }

-- ?лигатуры
vim.opt.termguicolors = true
vim.g.terminal_color_256 = true


-- debag java
local dap = require('dap')

dap.adapters.java = {
  type = 'server';
  host = '127.0.0.1';
  port = '5005';
}

dap.configurations.java = {
  {
    type = 'java';
    request = 'launch';
    name = "Launch Current File";
    program = "${file}";
  },
}


