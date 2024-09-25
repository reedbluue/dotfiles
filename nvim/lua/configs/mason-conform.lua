local c = require 'configs.conform'

require('mason-conform').setup {
  ignore_install = c.ignore_install,
}
