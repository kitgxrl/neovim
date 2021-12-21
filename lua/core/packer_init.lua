local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

require('packer').init {
   display = {
      open_fn = function()
         return require("packer.util").float { border = "single" }
      end,
      prompt_border = "single",
   },
   git = {
      clone_timeout = 600,
   },
   auto_clean = true,
   compile_on_sync = true,
}

vim.cmd [[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerCompile
  augroup end
]]
