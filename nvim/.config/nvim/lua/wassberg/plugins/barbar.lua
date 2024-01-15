return {
    "romgrk/barbar.nvim",
    dependencies = {
        "nvim-tree/nvim-web-devicons",
    },
    config = function()
        require("barbar").setup {}

        local keymap = vim.keymap

        -- Loop through 1-10
        -- for i = 1, 10 do keymap.set('n', '<Leader>' .. i , ':BufferGoto ' .. i .. 'cr>') end
        keymap.set('n', '<Leader>h', ':BufferPrevious<cr>')
        keymap.set('n', '<Leader>l', ':BufferNext<cr>')
        keymap.set('n', '<Leader>x', ':BufferClose<cr>')
    end,
}
