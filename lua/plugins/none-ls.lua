-- lua/plugins/none-ls.lua

-- Personalizar fontes do None-ls

---@type LazySpec
return {
  "nvimtools/none-ls.nvim",
  opts = function(_, opts)
    local null_ls = require "null-ls"

    -- Vamos substituir completamente as fontes padrão.
    -- O none-ls será responsável APENAS pela formatação com o Prettier.
    -- Removemos o ESLint daqui para eliminar todos os erros e conflitos.
    opts.sources = {
      null_ls.builtins.formatting.prettier,
    }
  end,
}
