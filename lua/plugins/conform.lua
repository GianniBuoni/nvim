return {
  {
    'stevearc/conform.nvim',
    -- all filetypes formatted by prettier
    opts = {
      prettier_ft = {
        yaml = {},
        markdown = {},
        typescript = {},
        json = {},
        html = {},
      },
    },

    config = function(_, opts)
      local conform = require("conform")
      local config = {
        formatters_by_ft = {},
        format_on_save = {},
      }

      for ft, ft_config in pairs(opts.prettier_ft) do
        ft_config = { "prettier" }
        config.formatters_by_ft[ft] = ft_config
      end


      -- format on save
      config.format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      }

      conform.setup(config)
    end
  }
}
