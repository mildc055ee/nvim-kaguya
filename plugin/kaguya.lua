if vim.g.loaded_kaguya then
    return
end
vim.g.loaded_kaguya = true

vim.keymap.set("i", "<C-j>", require("kaguya").toggle, { expr = true })
