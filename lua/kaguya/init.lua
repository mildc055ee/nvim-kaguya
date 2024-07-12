local M = {}

function M.enable() end

function M.disable() end

function M.toggle()
    if vim.bo.iminsert == 1 then
        return M.disable()
    else
        return M.enable()
    end
end

return M
