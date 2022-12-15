local status, mason = pcall(require, "mason")
if (not status) then return end
local status2, lspconfig = pcall(require, "mason-lspconfig")

mason.setup({

})

lspconfig.setup {
  automatic_installation = true
}
