return {
  'saghen/blink.cmp',
  dependencies = { 'folke/lazydev.nvim' },
  opts = {
    -- Isso resolve o erro do "lazydev" que você teve
    sources = {
      default = { 'lsp', 'path', 'snippets', 'buffer', 'lazydev' },
      providers = {
        lazydev = {
          name = 'LazyDev',
          module = 'lazydev.integrations.blink',
          score_offset = 100,
        },
      },
    },

    -- CONFIGURAÇÃO DOS ATALHOS (KEYMAPS)
    keymap = {
      preset = 'default', -- Usa os padrões do blink (C-y para aceitar, C-n/p para navegar)

      -- Se você quiser usar ENTER para confirmar a sugestão:
      ['<CR>'] = { 'accept', 'fallback' },

      -- Se preferir usar TAB para confirmar:
      -- ['<Tab>'] = { 'accept', 'fallback' },
    },
  },
}
