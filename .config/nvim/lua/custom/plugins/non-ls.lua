return {
	"nvimtools/none-ls.nvim",
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			sources = {
				null_ls.builtins.formatting.gofmt, -- Go formatter
				null_ls.builtins.formatting.markdownlint_cli2,
				null_ls.builtins.formatting.htmlbeautifier, -- HTML formatting
				null_ls.builtins.diagnostics.htmlhint,
				-- You can add other null-ls sources here if needed
			},
			on_attach = function(client, bufnr)
				if client.supports_method("textDocument/formatting") then
					-- Create group first, then clear autocmds
					local group = vim.api.nvim_create_augroup("LspFormatting", { clear = false })
					vim.api.nvim_clear_autocmds({ group = group, buffer = bufnr })

					vim.api.nvim_create_autocmd("BufWritePre", {
						group = group,
						buffer = bufnr,
						callback = function()
							vim.lsp.buf.format({ bufnr = bufnr })
						end,
					})
				end
			end,
		})

		-- Now setup Lua language server (sumneko_lua) for Lua LSP features
		-- local lspconfig = require("lspconfig")

		vim.lsp.config.lua_ls = {
			settings = {
				Lua = {
					runtime = {
						version = "LuaJIT", -- Neovim uses LuaJIT
						path = vim.split(package.path, ";"),
					},
					diagnostics = {
						globals = { "vim" }, -- recognize 'vim' global
					},
					workspace = {
						library = vim.api.nvim_get_runtime_file("", true),
					},
					telemetry = {
						enable = false,
					},
				},
			},
		}
	end,
}
