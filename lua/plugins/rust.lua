return {
  'rust-lang/rust.vim',
  ft = 'rust', -- Carregamento "preguiçoso": o plugin só será ativado ao abrir arquivos .rs
  init = function()
    -- Esta configuração é opcional, mas altamente recomendada.
    -- Ela executa o 'rustfmt' automaticamente toda vez que você salva o arquivo.
    vim.g.rustfmt_autosave = 1
  end,
}
