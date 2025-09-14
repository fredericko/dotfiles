vim.lsp.config('luals', {
  cmd = { 'lua-language-server' },
  filetypes = { 'lua' },
  root_markers = { '.luarc.json', '.luarc.jsonc' },
})

local root_markers = { 'composer.json' }
local root_dir = vim.fs.root(0, root_markers)

if root_dir then
  vim.lsp.config('intelephense', {
    cmd = { 'node', 'node_modules/intelephense/lib/intelephense.js', '--stdio' },
    root_dir = root_dir,
  })
end

vim.lsp.enable({ 'luals', 'intelephense' })

