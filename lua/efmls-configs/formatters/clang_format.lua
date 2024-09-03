-- Metadata
-- languages: c,c++
-- url: https://clang.llvm.org/docs/ClangFormat.html

local fs = require('efmls-configs.fs')

local formatter = 'clang-format'
local args = string.format('--style %s', 'file:' .. vim.g.tool_config_path .. '/clang-format/clang-format.config')
local command = string.format("%s %s -", fs.executable(formatter), args)

return {
  formatCommand = command,
  formatStdin = true,
}
