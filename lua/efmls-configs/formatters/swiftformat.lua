-- Metadata
-- languages: swift
-- url: https://github.com/nicklockwood/SwiftFormat

local fs = require('efmls-configs.fs')

local formatter = 'swiftformat'
local args = string.format('--baseconfig %s', vim.g.tool_config_path .. "/swiftformat/swiftformat.config")
local command = string.format('%s stdin --output stdout --quiet --stdinpath "${INPUT}" %s', fs.executable(formatter), args)

return {
  formatCommand = command,
  formatStdin = true,
}
