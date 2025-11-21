# Neovim Keybindings Cheatsheet

**Leader Key:** `<Space>`
**Local Leader:** `\`

## General

| Key | Mode | Action |
|-----|------|--------|
| `<leader><leader>` | Normal | Reload Neovim configuration |
| `<leader>?` | Normal | Show which-key help |
| `Q` | Normal | Disabled (prevent Ex mode) |
| `<C-c>` | Insert | Same as `<Esc>` |

## File Explorer

| Key | Mode | Action |
|-----|------|--------|
| `<leader>pv` | Normal | Open file explorer (netrw) |

## Navigation

### Movement

| Key | Mode | Action |
|-----|------|--------|
| `<C-d>` | Normal | Move half page down (centered) |
| `<C-u>` | Normal | Move half page up (centered) |
| `n` | Normal | Next search result (centered) |
| `N` | Normal | Previous search result (centered) |

### Quickfix List

| Key | Mode | Action |
|-----|------|--------|
| `]q` | Normal | Next quickfix item (centered) |
| `[q` | Normal | Previous quickfix item (centered) |

### Location List

| Key | Mode | Action |
|-----|------|--------|
| `<leader>k` | Normal | Next location item (centered) |
| `<leader>j` | Normal | Previous location item (centered) |

## Telescope (Fuzzy Finder)

| Key | Mode | Action |
|-----|------|--------|
| `<leader>ff` | Normal | Find files |
| `<leader>fg` | Normal | Find git files |
| `<leader>fs` | Normal | Live grep (search text) |
| `<leader>fS` | Normal | Grep for specific string (with prompt) |
| `<leader>fc` | Normal | Grep current word under cursor |
| `<leader>fC` | Normal | Grep current WORD under cursor (case sensitive) |
| `<leader>fh` | Normal | Search help tags |

### Telescope Insert Mode Mappings

| Key | Mode | Action |
|-----|------|--------|
| `<C-k>` | Insert | Move to previous result |
| `<C-j>` | Insert | Move to next result |
| `<C-q>` | Insert | Send selected to quickfix list |

## LSP (Language Server Protocol)

| Key | Mode | Action |
|-----|------|--------|
| `gR` | Normal | Show LSP references (Telescope) |
| `gD` | Normal | Go to declaration |
| `gd` | Normal | Show LSP definitions (Telescope) |
| `gi` | Normal | Show LSP implementations (Telescope) |
| `gt` | Normal | Show LSP type definitions (Telescope) |
| `K` | Normal | Show documentation for symbol under cursor |
| `<leader>ca` | Normal/Visual | Show available code actions |
| `<leader>rn` | Normal | Smart rename |
| `<leader>D` | Normal | Show buffer diagnostics (Telescope) |
| `<leader>d` | Normal | Show line diagnostics (float) |
| `[d` | Normal | Go to previous diagnostic |
| `]d` | Normal | Go to next diagnostic |
| `<leader>rs` | Normal | Restart LSP |

## Formatting & Linting

| Key | Mode | Action |
|-----|------|--------|
| `<leader>f` | Normal | Format buffer using LSP |
| `<leader>mp` | Normal/Visual | Format file or range (Conform) |
| `<leader>l` | Normal | Trigger linting for current file |

## Text Editing

### Line Manipulation

| Key | Mode | Action |
|-----|------|--------|
| `J` | Visual | Move selected lines down |
| `K` | Visual | Move selected lines up |
| `J` | Normal | Join lines without moving cursor |

### Numbers

| Key | Mode | Action |
|-----|------|--------|
| `<leader>+` | Normal | Increment number |
| `<leader>-` | Normal | Decrement number |

### Clipboard Operations

| Key | Mode | Action |
|-----|------|--------|
| `<leader>y` | Normal/Visual | Copy to system clipboard |
| `<leader>Y` | Normal | Copy entire line to system clipboard |
| `<leader>p` | Visual | Paste without overwriting clipboard |
| `<leader>d` | Normal/Visual | Delete without copying to clipboard |

### Search & Replace

| Key | Mode | Action |
|-----|------|--------|
| `<leader>nh` | Normal | Clear search highlights |
| `<leader>s` | Normal | Replace word under cursor (interactive) |

## Git

### Fugitive

| Key | Mode | Action |
|-----|------|--------|
| `<leader>gs` | Normal | Open Git status |
| `<leader>p` | Normal | Git push (in fugitive buffer) |
| `<leader>P` | Normal | Git pull --rebase (in fugitive buffer) |
| `<leader>t` | Normal | Git push to origin (with prompt) |

### Gitsigns

#### Navigation

| Key | Mode | Action |
|-----|------|--------|
| `]h` | Normal | Next git hunk |
| `[h` | Normal | Previous git hunk |

#### Actions

| Key | Mode | Action |
|-----|------|--------|
| `<leader>hs` | Normal/Visual | Stage hunk |
| `<leader>hr` | Normal/Visual | Reset hunk |
| `<leader>hS` | Normal | Stage entire buffer |
| `<leader>hR` | Normal | Reset entire buffer |
| `<leader>hu` | Normal | Undo stage hunk |
| `<leader>hp` | Normal | Preview hunk |
| `<leader>hb` | Normal | Blame line (full) |
| `<leader>hB` | Normal | Toggle current line blame |
| `<leader>hd` | Normal | Diff this |
| `<leader>hD` | Normal | Diff this ~ |
| `ih` | Operator/Visual | Select git hunk (text object) |

## Harpoon (Quick File Navigation)

| Key | Mode | Action |
|-----|------|--------|
| `<leader>a` | Normal | Add file to harpoon list |
| `<C-e>` | Normal | Toggle harpoon quick menu |
| `<C-h>` | Normal | Navigate to harpoon file 1 |
| `<C-t>` | Normal | Navigate to harpoon file 2 |
| `<C-n>` | Normal | Navigate to harpoon file 3 |
| `<C-s>` | Normal | Navigate to harpoon file 4 |

## Undo Tree

| Key | Mode | Action |
|-----|------|--------|
| `<leader>u` | Normal | Toggle undo tree |

## Trouble (Diagnostics UI)

| Key | Mode | Action |
|-----|------|--------|
| `<leader>xw` | Normal | Toggle workspace diagnostics |
| `<leader>xd` | Normal | Toggle document diagnostics |
| `<leader>xq` | Normal | Toggle quickfix list |
| `<leader>xl` | Normal | Toggle location list |
| `<leader>xt` | Normal | Toggle todos |

## Debug (DAP)

| Key | Mode | Action |
|-----|------|--------|
| `<leader>db` | Normal | Toggle breakpoint |
| `<leader>dc` | Normal | Continue debugging |
| `<leader>di` | Normal | Step into |
| `<leader>do` | Normal | Step over |
| `<leader>dO` | Normal | Step out |
| `<leader>dr` | Normal | Toggle REPL |
| `<leader>dl` | Normal | Run last debug configuration |
| `<leader>du` | Normal | Toggle debug UI |
| `<leader>dt` | Normal | Terminate debugging |
| `<leader>df` | Normal | Peek function definition |
| `<leader>dF` | Normal | Peek class definition |

## Completion (nvim-cmp)

*Active only in insert mode when completion menu is open*

| Key | Mode | Action |
|-----|------|--------|
| `<C-k>` | Insert | Previous completion item |
| `<C-j>` | Insert | Next completion item |
| `<C-b>` | Insert | Scroll docs up |
| `<C-f>` | Insert | Scroll docs down |
| `<C-Space>` | Insert | Show completion suggestions |
| `<C-e>` | Insert | Close completion menu |
| `<CR>` | Insert | Confirm selection |

## Treesitter

### Incremental Selection

| Key | Mode | Action |
|-----|------|--------|
| `<C-space>` | Normal | Init selection |
| `<C-space>` | Visual | Increment selection |
| `<bs>` | Visual | Decrement selection |

### Text Objects - Select

| Key | Mode | Action |
|-----|------|--------|
| `af` | Visual/Operator | Select outer function |
| `if` | Visual/Operator | Select inner function |
| `ac` | Visual/Operator | Select outer class |
| `ic` | Visual/Operator | Select inner class |
| `aa` | Visual/Operator | Select outer parameter |
| `ia` | Visual/Operator | Select inner parameter |
| `al` | Visual/Operator | Select outer loop |
| `il` | Visual/Operator | Select inner loop |
| `ai` | Visual/Operator | Select outer conditional |
| `ii` | Visual/Operator | Select inner conditional |
| `ab` | Visual/Operator | Select outer block |
| `ib` | Visual/Operator | Select inner block |
| `as` | Visual/Operator | Select outer statement |
| `is` | Visual/Operator | Select inner statement |
| `aC` | Visual/Operator | Select outer comment |
| `iC` | Visual/Operator | Select inner comment |

### Text Objects - Navigate

| Key | Mode | Action |
|-----|------|--------|
| `]m` | Normal | Next function start |
| `]M` | Normal | Next function end |
| `[m` | Normal | Previous function start |
| `[M` | Normal | Previous function end |
| `]c` | Normal | Next class start |
| `]C` | Normal | Next class end |
| `[c` | Normal | Previous class start |
| `[C` | Normal | Previous class end |
| `]a` | Normal | Next parameter start |
| `]A` | Normal | Next parameter end |
| `[a` | Normal | Previous parameter start |
| `[A` | Normal | Previous parameter end |
| `]l` | Normal | Next loop start |
| `]L` | Normal | Next loop end |
| `[l` | Normal | Previous loop start |
| `[L` | Normal | Previous loop end |
| `]i` | Normal | Next conditional start |
| `]I` | Normal | Next conditional end |
| `[i` | Normal | Previous conditional start |
| `[I` | Normal | Previous conditional end |
| `]b` | Normal | Next block start |
| `]B` | Normal | Next block end |
| `[b` | Normal | Previous block start |
| `[B` | Normal | Previous block end |
| `]s` | Normal | Next statement start |
| `]S` | Normal | Next statement end |
| `[s` | Normal | Previous statement start |
| `[S` | Normal | Previous statement end |

### Text Objects - Swap

| Key | Mode | Action |
|-----|------|--------|
| `<leader>a` | Normal | Swap with next parameter |
| `<leader>A` | Normal | Swap with previous parameter |
| `<leader>f` | Normal | Swap with next function |
| `<leader>F` | Normal | Swap with previous function |
| `<leader>c` | Normal | Swap with next class |
| `<leader>C` | Normal | Swap with previous class |

## Comments

| Key | Mode | Action |
|-----|------|--------|
| `gcc` | Normal | Toggle line comment |
| `gc` | Visual | Toggle comment for selection |
| `gbc` | Normal | Toggle block comment |
| `gb` | Visual | Toggle block comment for selection |

## File Operations

| Key | Mode | Action |
|-----|------|--------|
| `<leader>x` | Normal | Make current file executable |

## Tmux Integration

| Key | Mode | Action |
|-----|------|--------|
| `<C-f>` | Normal | Open tmux sessionizer |

## Go Error Handling Snippets

| Key | Mode | Action |
|-----|------|--------|
| `<leader>ee` | Normal | Insert error return block |
| `<leader>ea` | Normal | Insert assert.NoError |
| `<leader>ef` | Normal | Insert log.Fatalf error |
| `<leader>el` | Normal | Insert logger.Error |

## Fun

| Key | Mode | Action |
|-----|------|--------|
| `<leader>mr` | Normal | CellularAutomaton: Make it rain |

---

*Generated from Neovim configuration*
