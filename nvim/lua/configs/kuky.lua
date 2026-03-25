local kukypath = vim.fn.stdpath("data") .. "/Kuky"
if not vim.uv.fs_stat(kukypath) then
    local kukyrepo = "https://github.com/Kopihue/Kuky.git"
    vim.notify("Installing Kuky manager!")
    local result = vim.fn.system({
	"git",
	"clone",
	"--depth", "1",
	"--filter=blob:none",
	"--branch=main",
	kukyrepo,
	kukypath,
    })
end

vim.opt.rtp:prepend(kukypath)

vim.api.nvim_create_user_command("Kukyhardupdates", function()
    require("kuky").hardupdates()
end, {})
