return {
  'saghen/blink.cmp',
  version = '1.*', -- v2 exige nvim 0.12+; fixado em v1 enquanto estivermos no 0.11.x
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

    -- Não deixa nenhum item selecionado por padrão: o ENTER só aceita
    -- se você escolher algo com TAB; caso contrário, pula linha normalmente
    completion = {
      list = {
        selection = { preselect = false, auto_insert = true },
      },
    },

    -- Mostra a assinatura da função ao digitar os argumentos (abre no "(" e
    -- destaca o parâmetro atual). <C-k> no modo insert mostra/esconde
    signature = { enabled = true },

    -- CONFIGURAÇÃO DOS ATALHOS (KEYMAPS)
    keymap = {
      preset = 'default', -- Usa os padrões do blink

      -- 1. Libera as setas para o Neovim (não navegam mais no menu)
      ['<Up>'] = { 'fallback' },
      ['<Down>'] = { 'fallback' },

      -- 2. Usa TAB e Shift+TAB para navegar nas opções do menu
      ['<Tab>'] = { 'select_next', 'fallback' },
      ['<S-Tab>'] = { 'select_prev', 'fallback' },

      -- 3. Usa ENTER para confirmar a sugestão
      ['<CR>'] = { 'accept', 'fallback' },
    },
  },
}
