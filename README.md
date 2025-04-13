# 🧠 Omar's Modern Neovim Configuration

A modern Neovim configuration built with ❤️ for Python 🐍 and Go 🐹 developers.

## ✨ Features

- **LSP + Mason** for effortless language server installs
- **nvim-cmp** for completion with snippets
- **nvim-dap** and **nvim-dap-python** for debugging
- **Telescope** for fuzzy finding
- **Treesitter** for fast, accurate syntax highlighting
- **nvim-tree** for file navigation
- **tokyonight** color scheme with transparent backgrounds

## 📦 Installation

```bash
git clone https://github.com/your-username/nvim-modern ~/.nvim-modern
ln -s ~/.nvim-modern ~/.config/nvim
```

Then open Neovim and run:

```vim
:Lazy sync
```

Restart Neovim and enjoy!

## 🛠️ Language Server Setup

- Python: `pyright`
- Go: `gopls`

Other useful tools:

```bash
pip install debugpy
```

## 🗂 Directory Structure

```
~/.config/nvim/
├── init.lua
└── lua/
    └── omar/
        ├── core/
        │   ├── options.lua
        │   ├── keymaps.lua
        │   └── colorscheme.lua
        ├── lazy.lua
        └── plugins.lua
```

---

📸 Screenshot and demo coming soon!
