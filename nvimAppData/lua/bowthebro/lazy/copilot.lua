return {
    "github/copilot.vim",

    -- Use Tab to accept Copilot suggestions or fallback to other completions
    vim.keymap.set("i", "<Tab>", function()
        local suggestion = vim.fn["copilot#GetSuggestion"]()
        if suggestion and suggestion ~= "" then
            return vim.fn["copilot#Accept"]("")
        end

        return "<Tab>"
    end, { expr = true, silent = true, desc = "Copilot accept or fallback" })
}
