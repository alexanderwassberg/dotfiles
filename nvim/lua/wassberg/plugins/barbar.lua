return {
    "romgrk/barbar.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons", -- OPTIONAL: for file icons
    },
    config = function()
        require("barbar").setup {}

        local keymap = vim.keymap
        -- Loop through 1-10
        for i = 1, 10 do keymap.set('n', '<C-' .. i .. '>', ':BufferGoto ' .. i .. '<cr>') end
        keymap.set('n', '<C-x>', ':BufferClose<cr>')
    end,
}
