-- This file needs to have same structure as nvconfig.lua 
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :( 

---@type ChadrcConfig
local M = {}

M.base46 = {
	theme = "yoru",

	hl_override = {
		Comment = { italic = true },
		["@comment"] = { italic = true },
	},
     theme_toggle = { "yoru", "github_light" },
}

M.nvdash = {
  load_on_startup = true,
  -- header = {}
}
M.ui = {
      tabufline = {
         -- order = { "treeOffset", "buffers", "tabs", "btns", "abc" },
         lazyload = false
     },
    statusline = {
      theme = "vscode_colored",
      separator_style = "block",
      order = {  "mode", "file", "git", "%=", "lsp_msg", "%=", "diagnostics", "lsp", "cursor", "cwd" },
      --modules = nil,  
         -- modules = {
         --   abc = function()
         --     return "hi"
         --   end,
         --
         --   xyz =  "hi",
         --   f = "%F"
         -- }
    },
}
M.term = {
    base46_colors = true,
    -- base46_colors = false,
}
return M
