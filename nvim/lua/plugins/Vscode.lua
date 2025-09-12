return {
  "Mofiqul/vscode.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    -- اختار light أو dark
    vim.o.background = "dark"

    require("vscode").setup({
      -- الاختيارات ديالك هنا
      transparent = false,
      italic_comments = true,
      disable_nvimtree_bg = true,
    })

    require("vscode").load()
  end,
}
