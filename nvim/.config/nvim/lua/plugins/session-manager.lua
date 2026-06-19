local present, session_manager = pcall(require, "session_manager")
if not present then
  return
end

local path_present, Path = pcall(require, "plenary.path")
if not path_present then
  return
end

session_manager.setup({})

local config_group = vim.api.nvim_create_augroup('SessionManagerGroup', {})

vim.api.nvim_create_autocmd({ 'User' }, {
  pattern = "SessionLoadPost",
  group = config_group,
  callback = function()
    require('nvim-tree.api').tree.toggle(false, true)
    require('notify')('Session loaded!', 'info', { title = 'Session Manager' })
  end,
})
