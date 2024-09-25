local lint = require 'lint'

local function keyTableFilter(source, filter)
  local temp = {}

  for _, k in ipairs(filter) do
    temp[k] = true
  end

  local filtered = {}

  for k, v in pairs(source) do
    for _, kk in ipairs(v) do
      if not temp[k] and not filtered[kk] then
        table.insert(filtered, kk)
      end
    end
  end

  return filtered
end

local config = {
  automatic_installation = false,
  ensure_installed = keyTableFilter(lint.linters_by_ft, lint.install_ignore),
}

return config
