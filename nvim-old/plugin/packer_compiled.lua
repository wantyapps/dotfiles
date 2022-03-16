-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/uriarev/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/uriarev/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/uriarev/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/uriarev/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/uriarev/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  WantyPlugin = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/WantyPlugin"
  },
  ["artify.vim"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/artify.vim"
  },
  ["base16-vim"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/base16-vim"
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
  ["express_line.nvim"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/express_line.nvim"
  },
  ["gitsigns.nvim"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/gitsigns.nvim"
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
  ["lsp-status.nvim"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/lsp-status.nvim"
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
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  ["photon.vim"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/photon.vim"
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
  vim = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/vim"
  },
  ["vim-color-forest-night"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/vim-color-forest-night"
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
  ["vim-gitbranch"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/vim-gitbranch"
  },
  ["vim-latex-live-preview"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/vim-latex-live-preview"
  },
  ["vim-listchars"] = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/vim-listchars"
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
  },
  vimspector = {
    loaded = true,
    path = "/Users/uriarev/.local/share/nvim/site/pack/packer/start/vimspector"
  }
}

time([[Defining packer_plugins]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end