return {
  settings = {
    ['rust-analyzer'] = {
      checkOnSave  = { command = 'clippy' },
      inlayHints   = {
        enable         = true,
        typeHints      = { enable = true },
        parameterHints = { enable = true },
      },
      cargo = { allFeatures = true },
    },
  },
}

