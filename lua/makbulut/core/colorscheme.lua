local status, _ = pcall(vim.cmd, "colorscheme nightfly")
if not status then
  print("Colorscheme not found!")
  return
end

-- Saydam arka plan ayarları
vim.cmd [[
  highlight Normal guibg=NONE ctermbg=NONE
  highlight NonText guibg=NONE ctermbg=NONE
  highlight NormalNC guibg=NONE ctermbg=NONE
  highlight LineNr guibg=NONE ctermbg=NONE
  highlight Folded guibg=NONE ctermbg=NONE
  highlight EndOfBuffer guibg=NONE ctermbg=NONE
  highlight TelescopeBorder guifg=#65D1FF
  highlight TelescopePromptBorder guifg=#65D1FF
  highlight TelescopeResultsTitle guifg=#65D1FF
  highlight TelescopePromptTitle guifg=#65D1FF
]]
