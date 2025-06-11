-- Setup plugins first
require("config.lazy")
require("mason").setup()

require("config.hotkeys").setup_hotkeys()
require("config.settings").set_settings()
require("config.lsp").set_up_lsps()
require("config.lsp").setup_cmp()
