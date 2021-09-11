-- need a map method to handle the different kinds of key maps
local function map(mode, combo, mapping, opts)
	local options = {noremap = true}
	if opts then
		options = vim.tbl_extend('force', options, opts)
	end
	vim.api.nvim_set_keymap(mode, combo, mapping, options)
end

vim.g.mapleader = ','							-- change the <leader> key to be comma

map('n', '<CR>', ':noh<CR><CR>', {noremap = true})			-- clears search highlight & still be enter
map('n', '<C-p>', ':Telescope find_files<CR>', {noremap = true}) 	-- ctrl p but with telescope
map('n', '<leader>w', ':HopWord<CR>', {noremap = true}) 		-- for fast word nav
map('n', '<leader>b', ':NvimTreeToggle<CR>', {noremap = true}) 		-- for opening and closer the file browser
map('n', '<leader>h', ':Gitsigns preview_hunk<CR>', {noremap = true}) 	-- show the git hunk
