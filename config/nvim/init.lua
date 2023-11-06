-- Carregar plugin 'nvim-treesitter' usando vim-plug
vim.api.nvim_set_keymap('n', '<space>e', '<Cmd>CocCommand explorer<CR>', { noremap = true, silent = true })
vim.cmd [[
:inoremap <silent><expr> <cr> coc#pum#visible() ? coc#_select_confirm() : "\<C-g>u\<CR>"
call plug#begin('~/.config/nvim/plugged')
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Adicione outras linguagens conforme necessário
Plug 'nvim-treesitter/playground'
Plug 'nvim-treesitter/completion-treesitter'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'liuchengxu/vim-which-key'
" Outros plugins...
call plug#end()
]]

-- Configuração do nvim-treesitter
require'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "lua", "vim", "vimdoc", "query", "python", "java" },
	highlight = {
		enable = true,              -- Ativar destaque de sintaxe
		additional_vim_regex_highlighting = false,
	},
	indent = {
		enable = true,              -- Ativar indentação baseada em árvores
	},
	autotag = {
		enable = true,              -- Ativar autotag para HTML e XML
	},
}

-- Configuração do playground para experimentação com árvores sintáticas
require'nvim-treesitter.configs'.setup {
	playground = {
		enable = true,
		disable = {},
		updatetime = 25, -- Debounce time para atualização automática do Playground
		persist_queries = false,
		keybindings = {
			toggle_query_editor = 'o',
			toggle_hl_groups = 'i',
			toggle_injected_languages = 't',
			toggle_anonymous_nodes = 'a',
			toggle_language_display = 'I',
			focus_language = 'f',
			unfocus_language = 'F',
			update = 'R',
			goto_node = '<cr>',
			show_help = '?',
		},
	},
}

-- Configuração para autocompletar usando nvim-treesitter
require'nvim-treesitter.configs'.setup {
	autotag = {
		enable = true,
	},
}

vim.o.tabstop = 4    -- Number of spaces that a <Tab> in the file counts for
vim.o.shiftwidth = 4  -- Number of spaces to use for each step of (auto)indent
vim.o.expandtab = true -- Use spaces instead of tabs
vim.o.autoindent = true -- Enable auto-indentation
vim.api.nvim_set_keymap('n', 'gd', '<Plug>(coc-definition)', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gr', '<Plug>(coc-references)', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'la', '<Plug>(coc-codeaction)', { noremap = true, silent = true })
