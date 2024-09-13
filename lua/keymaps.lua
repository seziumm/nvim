-- Impostazioni di base per Neovim
vim.g.mapleader = ' '             -- Imposta lo spazio come global leader 
vim.g.maplocalleader = ' '        -- Imposta lo spazio come local leader


vim.opt.number = true             -- Mostra i numeri di linea
vim.opt.relativenumber = true     -- Mostra i numeri di linea relativi


vim.opt.expandtab = true          -- Usa spazi invece di tab
vim.opt.shiftwidth = 2            -- Numero di spazi per il rientro automatico vim.opt.tabstop = 2               -- Numero di spazi per il tab
vim.opt.softtabstop = 2           -- Numero di spazi per un tab quando si modifica (per esempio quando eliminiamo un tab)


vim.opt.wrap = false              -- Non permette il wrap delle linee di testo (il testo non va a capo quando va fuori schermo)
vim.opt.swapfile = false          -- Disabilita il file di swap
vim.opt.backup = false            -- Disabilita il backup dei file


vim.opt.undofile = true           -- Abilita il file di undo persistente (se si chiude e riapre il file, comunque si possono effettuare gli undo)
vim.opt.incsearch = true          -- Cerca mentre scrivi
vim.opt.hlsearch = true           -- Evidenzia i risultati della ricerca

                                  -- vim.opt.smartcase = true          -- Sensibile alle maiuscole se inserite nella ricerca
vim.opt.ignorecase = true         -- Cerca ignorando maiuscole/minuscole
vim.opt.scrolloff = 8             -- Scrolla quando ci si avvicina ai bordi
vim.opt.sidescrolloff = 8         -- Scrolla lateralmente quando si avvicina al bordo
vim.opt.termguicolors = true      -- Abilita il supporto ai colori veri nel terminale

vim.opt.clipboard = 'unnamedplus' -- Configurazione per la clipboard su Wayland con wl-clipboard

vim.opt.fillchars = { eob = ' ' } -- rimuove il carattere ~ all'inizio di ogni riga



vim.keymap.set("i", "(<CR>", "(<CR>)<Esc>O", { noremap = true })
vim.keymap.set("i", "[<CR>", "[<CR>]<Esc>O", { noremap = true })
vim.keymap.set("i", "{<CR>", "{<CR>}<Esc>O", { noremap = true })
--
-- Per passare da un buffer all'altro 

vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>w', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>W', { noremap = true, silent = true })

-- vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
-- vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })

-- Per passare da 
