return {
    "folke/trouble.nvim", opts = {}, 

    -- opens trouble 
    keys = {
        {
            "<leader>xx",
            "<cmd>Trouble diagnostics toggle<cr>",
            desc = "Workspace Diagnostics (Trouble)",
        },

        -- Optional: lazy-load only when these commands are used
        cmd = "Trouble",
    }
}

