-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

vim.g.python3_host_prog = "$HOME/opt/anaconda3/envs/nvim/bin/python"

function PythonFormatting()
  local filename = vim.fn.expand("%:p")
  vim.cmd("!black " .. filename)
  vim.cmd("!isort " .. filename)
  vim.cmd("e")
end

vim.cmd("autocmd BufWritePre *.py lua PythonFormatting()")
