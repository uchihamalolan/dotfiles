function ColorMyPencils(color)
	vim.o.background = "dark"
	vim.cmd.colorscheme(color)
end

ColorMyPencils("tokyonight-moon")
