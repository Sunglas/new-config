vim.g.mapleader = " "
-- vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }

-- Modes
-- normal_mode = "n"
-- insert_mode = "i"
-- visual_mode = "v"
-- visual_block_mode = "x"
-- term_mode = "t"
-- command_mode = "c"

-- dvorak movement (normal)
keymap("n", "t", "j", opts)
keymap("n", "n", "k", opts)
keymap("n", "s", "l", opts)
	-- reverse keymap
keymap("n", "j", "t", opts)
keymap("n", "k", "n", opts)
keymap("n", "l", "s", opts)

keymap("n", "T", "J", opts)
keymap("n", "N", "K", opts)
keymap("n", "S", "L", opts)
	-- reverse keymap
keymap("n", "J", "T", opts)
keymap("n", "K", "N", opts)
keymap("n", "L", "S", opts)

-- dvorak movement (visual)
keymap("v", "t", "j", opts)
keymap("v", "n", "k", opts)
keymap("v", "s", "l", opts)
	-- reverse keymap
keymap("v", "j", "t", opts)
keymap("v", "k", "n", opts)
keymap("v", "l", "s", opts)

keymap("v", "T", "J", opts)
keymap("v", "N", "K", opts)
keymap("v", "S", "L", opts)
	-- reverse keymap
keymap("v", "J", "T", opts)
keymap("v", "K", "N", opts)
keymap("v", "L", "S", opts)

-- dvorak movement (term_mode)
keymap("t", "t", "j", opts)
keymap("t", "n", "k", opts)
keymap("t", "s", "l", opts)
	-- reverse keymap
keymap("t", "j", "t", opts)
keymap("t", "k", "n", opts)
keymap("t", "l", "s", opts)

keymap("t", "T", "J", opts)
keymap("t", "N", "K", opts)
keymap("t", "S", "L", opts)
	-- reverse keymap
keymap("t", "J", "T", opts)
keymap("t", "K", "N", opts)
keymap("t", "L", "S", opts)
