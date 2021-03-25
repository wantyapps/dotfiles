" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/Users/uriarev/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/uriarev/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/uriarev/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/uriarev/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/uriarev/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  WantyPlugin = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/WantyPlugin"
  },
  ["artify.vim"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/artify.vim"
  },
  ["completion-buffers"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/completion-buffers"
  },
  ["completion-nvim"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/completion-nvim"
  },
  ["dwm.vim"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/dwm.vim"
  },
  gruvbox = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/gruvbox"
  },
  ["iceberg-dark"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/iceberg-dark"
  },
  ["iceberg.vim"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/iceberg.vim"
  },
  ["lazygit.nvim"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/lazygit.nvim"
  },
  ["lightline-asyncrun"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/lightline-asyncrun"
  },
  ["lightline-gitdiff"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/lightline-gitdiff"
  },
  ["lightline.vim"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/lightline.vim"
  },
  ["lsp_extensions.nvim"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/lsp_extensions.nvim"
  },
  ["nlua.nvim"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/nlua.nvim"
  },
  ["nord-vim"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/nord-vim"
  },
  nordisk = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/nordisk"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/plenary.nvim"
  },
  ["pomodoro.vim"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/pomodoro.vim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/popup.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/telescope.nvim"
  },
  vim = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/vim"
  },
  ["vim-commentary"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/vim-commentary"
  },
  ["vim-css-color"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/vim-css-color"
  },
  ["vim-dispatch"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/vim-dispatch"
  },
  ["vim-floaterm"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/vim-floaterm"
  },
  ["vim-fountainpen"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/vim-fountainpen"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/vim-fugitive"
  },
  ["vim-gitbranch"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/vim-gitbranch"
  },
  ["vim-gitgutter"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/vim-gitgutter"
  },
  ["vim-rust"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/vim-rust"
  },
  ["vim-secret"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/vim-secret"
  },
  vimade = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/vimade"
  }
}

END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
