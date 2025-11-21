# Neovim Configuration

A modern Neovim configuration with lazy loading, LSP support, debugging capabilities, and enhanced text objects.

## 🚀 Features

- **Plugin Manager**: Lazy.nvim for fast startup and lazy loading
- **Language Server**: Full LSP support with Mason for automatic installation
- **Debugging**: nvim-dap with UI for Python, Go, JavaScript/TypeScript
- **Fuzzy Finder**: Telescope with fzf integration
- **Syntax Highlighting**: Treesitter with text objects
- **Completion**: nvim-cmp with LSP integration
- **Git Integration**: Git signs and fugitive
- **Status Line**: Lualine with custom theme
- **File Explorer**: Netrw integration
- **Theme**: Nightfox with transparent background

## ⌨️ Keybindings

### Leader Key
- `<Space>` - Main leader key
- `\` - Local leader key

### General Navigation
| Key | Description |
|-----|-------------|
| `<leader>pv` | Open file explorer |
| `<leader>+` | Increment number |
| `<leader>-` | Decrement number |
| `<C-d>` | Move half page down (centered) |
| `<C-u>` | Move half page up (centered) |
| `n` | Next search result (centered) |
| `N` | Previous search result (centered) |
| `<leader>nh` | Clear search highlights |

### Line Operations
| Key | Description |
|-----|-------------|
| `J` | Join lines without moving cursor |
| `<CR>` | Insert blank line below |
| `<S-CR>` | Insert blank line above |
| `v + J` | Move selected lines down |
| `v + K` | Move selected lines up |

### File Operations
| Key | Description |
|-----|-------------|
| `<leader>f` | Format buffer using LSP |
| `<leader>x` | Make current file executable |
| `<leader><leader>` | Source/reload Neovim config |

### Clipboard Operations
| Key | Description |
|-----|-------------|
| `<leader>p` | Paste over selection (no clipboard overwrite) |
| `<leader>y` | Copy to system clipboard |
| `<leader>Y` | Copy entire line to system clipboard |
| `<leader>d` | Delete without copying to clipboard |

### Telescope (Fuzzy Finder)
| Key | Description |
|-----|-------------|
| `<leader>ff` | Find files |
| `<leader>fg` | Find git files |
| `<leader>fs` | Live grep |
| `<leader>fS` | Grep for specific string |
| `<leader>fc` | Grep current word |
| `<leader>fC` | Grep current word (case sensitive) |
| `<leader>fh` | Help tags |

### LSP (Language Server Protocol)
| Key | Description |
|-----|-------------|
| `gd` | Go to definition |
| `gD` | Go to declaration |
| `gi` | Go to implementation |
| `gt` | Go to type definition |
| `gR` | Show references |
| `K` | Hover documentation |
| `<leader>ca` | Code actions |
| `<leader>rn` | Rename symbol |
| `<leader>D` | Show buffer diagnostics |
| `<leader>d` | Show line diagnostics |
| `[d` | Previous diagnostic |
| `]d` | Next diagnostic |
| `<leader>rs` | Restart LSP |

### Quickfix & Location Lists
| Key | Description |
|-----|-------------|
| `<C-k>` | Next quickfix item |
| `<C-j>` | Previous quickfix item |
| `<leader>k` | Next location item |
| `<leader>j` | Previous location item |

### Debugging (nvim-dap)
| Key | Description |
|-----|-------------|
| `<leader>db` | Toggle breakpoint |
| `<leader>dc` | Continue debugging |
| `<leader>di` | Step into |
| `<leader>do` | Step over |
| `<leader>dO` | Step out |
| `<leader>dr` | Toggle REPL |
| `<leader>dl` | Run last debug config |
| `<leader>du` | Toggle debug UI |
| `<leader>dt` | Terminate debugging |

### Treesitter Text Objects
| Key | Description |
|-----|-------------|
| `af` | Select outer function |
| `if` | Select inner function |
| `ac` | Select outer class |
| `ic` | Select inner class |
| `aa` | Select outer parameter |
| `ia` | Select inner parameter |
| `al` | Select outer loop |
| `il` | Select inner loop |
| `ai` | Select outer conditional |
| `ii` | Select inner conditional |
| `ab` | Select outer block |
| `ib` | Select inner block |
| `as` | Select outer statement |
| `is` | Select inner statement |
| `aC` | Select outer comment |
| `iC` | Select inner comment |

### Treesitter Navigation
| Key | Description |
|-----|-------------|
| `]m` | Next function start |
| `[m` | Previous function start |
| `]c` | Next class start |
| `[c` | Previous class start |
| `]a` | Next parameter start |
| `[a` | Previous parameter start |
| `]l` | Next loop start |
| `[l` | Previous loop start |
| `]i` | Next conditional start |
| `[i` | Previous conditional start |
| `]b` | Next block start |
| `[b` | Previous block start |
| `]s` | Next statement start |
| `[s` | Previous statement start |

### Treesitter Swapping
| Key | Description |
|-----|-------------|
| `<leader>a` | Swap with next parameter |
| `<leader>A` | Swap with previous parameter |
| `<leader>f` | Swap with next function |
| `<leader>F` | Swap with previous function |
| `<leader>c` | Swap with next class |
| `<leader>C` | Swap with previous class |

### Go Development Snippets
| Key | Description |
|-----|-------------|
| `<leader>ee` | Insert error return block |
| `<leader>ea` | Insert assertion for NoError |
| `<leader>ef` | Insert fatal log |
| `<leader>el` | Insert logger error |

### Other Tools
| Key | Description |
|-----|-------------|
| `<leader>s` | Replace word under cursor |
| `<leader>mr` | Run "make it rain" animation |
| `<C-f>` | Open tmux sessionizer |
| `<leader>vwm` | Start vim-with-me |
| `<leader>svwm` | Stop vim-with-me |

## 🛠️ Tools & Plugins

### Core Tools
- **Lazy.nvim**: Plugin manager with lazy loading
- **Mason**: LSP, DAP, and linter installer
- **LSP Config**: Language server configuration
- **nvim-cmp**: Completion engine
- **Telescope**: Fuzzy finder with fzf integration

### Language Support
- **Treesitter**: Syntax highlighting and text objects
- **Treesitter Text Objects**: Enhanced text object support
- **LuaSnip**: Snippet engine
- **Friendly Snippets**: VSCode-style snippets

### Development Tools
- **nvim-dap**: Debug adapter protocol
- **nvim-dap-ui**: Debug UI
- **dap-go**: Go debugging support
- **Git Signs**: Git integration in gutter
- **Fugitive**: Git wrapper

### UI & Experience
- **Nightfox**: Color scheme
- **Lualine**: Status line
- **Alpha**: Dashboard
- **Which Key**: Key binding help
- **Trouble**: Quickfix and location list UI
- **Comment**: Comment toggling
- **Gitsigns**: Git integration

### File Types Supported
- Bash, C, C++, CSS, Go, HTML, JavaScript, JSON, Lua, Python, PHP, Rust, TypeScript, Vim, YAML
- Special support for Templ files

## 🎨 Theme

Uses **Nightfox** with:
- Transparent background
- Custom color modifications
- Italic comments and functions
- Bold keywords and statements

## 🔧 Configuration Structure

```
nvim/
├── init.lua                 # Main entry point
├── lua/mp/
│   ├── config/             # Core configuration
│   │   ├── init.lua        # Load all config modules
│   │   ├── globals.lua     # Global variables
│   │   ├── opts.lua        # Neovim options
│   │   ├── keymap.lua      # Key mappings
│   │   ├── lazy.lua        # Plugin manager setup
│   │   ├── autocmds.lua    # Auto commands
│   │   ├── netrw.lua       # File explorer
│   │   └── qol.lua         # Quality of life improvements
│   └── plugins/            # Plugin configurations
│       ├── base.lua        # Base plugins
│       ├── lsp/            # Language server plugins
│       ├── debug.lua       # Debugging tools
│       └── ...             # Other plugin configs
```

## 🚀 Getting Started

1. **Prerequisites**:
   - Neovim 0.8.0+
   - Git
   - Node.js (for some LSP servers)
   - Python 3 (for Python LSP)

2. **Installation**:
   ```bash
   # Backup existing config
   mv ~/.config/nvim ~/.config/nvim.backup
   
   # Clone this configuration
   git clone <your-repo> ~/.config/nvim
   
   # Start Neovim and wait for plugins to install
   nvim
   ```

3. **First Run**:
   - Neovim will automatically install Lazy.nvim and all plugins
   - LSP servers will be installed via Mason on first use
   - Debug adapters will be installed when needed

## 🔍 Troubleshooting

### Common Issues

1. **Python LSP not working**:
   - Ensure Python 3 is installed
   - Install `debugpy`: `pip install debugpy`

2. **Go LSP not working**:
   - Install Go tools: `go install golang.org/x/tools/gopls@latest`
   - Install Delve for debugging: `go install github.com/go-delve/delve/cmd/dlv@latest`

3. **JavaScript/TypeScript LSP not working**:
   - Install Node.js
   - Install TypeScript: `npm install -g typescript`

4. **Plugin installation issues**:
   - Check internet connection
   - Run `:Lazy sync` to retry installation
   - Check `:checkhealth` for system issues

### Health Check
Run `:checkhealth` in Neovim to diagnose issues with:
- Treesitter parsers
- LSP servers
- Debug adapters
- Plugin dependencies

## 📝 Customization

### Adding New Plugins
1. Create a new file in `lua/mp/plugins/`
2. Return a table with plugin configuration
3. Restart Neovim or run `:Lazy sync`

### Modifying Keybindings
Edit `lua/mp/config/keymap.lua` to add or modify keybindings.

### Changing Theme
Modify `lua/mp/plugins/colorscheme.lua` to use a different theme.

## 🤝 Contributing

Feel free to submit issues and enhancement requests!

## 📄 License

This configuration is open source and available under the [MIT License](LICENSE). 