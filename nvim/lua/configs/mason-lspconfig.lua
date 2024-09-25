local lspconfig = require 'configs.lspconfig'

local function keyTableFilter(source, filter)
  local temp = {}

  for _, k in ipairs(filter) do
    temp[k] = true
  end

  local filtered = {}

  for k, _ in pairs(source) do
    if not temp[k] then
      table.insert(filtered, k)
    end
  end

  return filtered
end

local config = {
  ensure_installed = keyTableFilter(lspconfig.servers, lspconfig.install_ignore),
}

return config
