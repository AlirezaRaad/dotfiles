return -- In your ~/.config/nvim/init.lua or lazy.lua
{
	"fatih/vim-go",
	build = ":GoUpdateBinaries", -- Automatically installs/updates Go binaries
	ft = { "go", "gomod" }, -- Load only for Go files (optional but recommended)
}
