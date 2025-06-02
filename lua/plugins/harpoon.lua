return {
  { "nvim-lua/plenary.nvim" },
  {
    "ThePrimeagen/harpoon",
    -- Don't specify branch to get harpoon 1
    commit = "c1aebbad9e3d13f20bedb8f2ce8b3a94e39e424a", -- Lock to a stable harpoon 1 commit
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      -- Harpoon 1 configuration
      require("harpoon").setup({
        global_settings = {
          save_on_toggle = false,
          save_on_change = false,
          enter_on_send_cmd = false,
        },
      })

      local mark = require("harpoon.mark")
      local ui = require("harpoon.ui")

      -- Keymaps for harpoon 1
      vim.keymap.set("n", "<leader>a", mark.add_file)
      vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
      vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
      vim.keymap.set("n", "<C-j>", function() ui.nav_file(2) end)
      vim.keymap.set("n", "<C-k>", function() ui.nav_file(3) end)
      vim.keymap.set("n", "<C-l>", function() ui.nav_file(4) end)
      vim.keymap.set("n", "<leader>hp", ui.nav_prev)
      vim.keymap.set("n", "<leader>hn", ui.nav_next)
    end
  }
}
