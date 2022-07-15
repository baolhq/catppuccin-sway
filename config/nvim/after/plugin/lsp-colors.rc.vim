if !exists('#LspColors') | finish | endif

lua << EOF
require("lsp-colors").setup({
  Error = "#f38ba8",
  Warning = "#f9e2af",
  Information = "#89b4fa",
  Hint = "#a6adc8"
})
EOF
