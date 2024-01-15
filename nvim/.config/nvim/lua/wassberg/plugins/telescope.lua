return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local telescope = require("telescope")
    local actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        border = {},
        borderchars = { '─', '│', '─', '│', '╭', '╮', '╯', '╰' },
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })

    telescope.load_extension("fzf")

    local keymap = vim.keymap

    keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    keymap.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    keymap.set("n", "<leader>fs", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })

    vim.cmd([[
    highlight TelescopeSelection      guifg=#D79921 gui=bold " Selected item
    highlight TelescopeSelectionCaret guifg=#CC241D          " Selection caret
    highlight TelescopeMultiSelection guifg=#928374          " Multisections
    highlight TelescopeNormal         guibg=#00000           " Floating windows created by telescope

    " Border highlight groups
    highlight TelescopeBorder         guifg=#
    highlight TelescopePromptBorder   guifg=#
    highlight TelescopeResultsBorder  guifg=#
    highlight TelescopePreviewBorder  guifg=#

    " Highlight characters your input matches
    highlight TelescopeMatching       guifg=blue

    " Color the prompt prefix
    highlight TelescopePromptPrefix   guifg=red
    ]])
  end,
}
