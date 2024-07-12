local M = {}

function M.check()
    vim.health.start("nvim-kaguya")
    vim.health.ok("nvim-kaguya successfully loaded.")
end

return M
