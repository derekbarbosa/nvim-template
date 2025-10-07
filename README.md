# How to use this repo

copy this repository to your `nvim/` configuration directory (wherever it may
live).

on my machine, for example, my nvim config lives in ~/.config/nvim/

# config structure
```
├── init.lua  # our initfile, where we source all of our children configs.
├── lazy-lock.json # lockfile, dont touch, dont care.
├── lazyvim.json # same as above
└── lua
    └── custom # our directory to "reference" in our parent files (custom.configs...)
        ├── configs
        │   ├── blankline.lua
        │   ├── lualine.lua
        │   ├── mason.lua
        │   └── treesitter.lua
        ├── keymaps.lua # the configuration file for *MOST* of our keybinds (sans Mason)
        ├── options.lua # the configuration file for must vim.opt or vim.o options (and global options)
        └── plugins.lua # the configuration file that declares our plugins and their deps
```

# plugins
[blankline.lua](https://github.com/lukas-reineke/indent-blankline.nvim) a plugin for indentation guides

[lualine.lua](https://github.com/nvim-lualine/lualine.nvim) a statusline written in lua

[mason.lua](https://github.com/mason-org/mason.nvim) a package manager for LSPs, DAPs, etc.

[treesitter.lua](https://github.com/nvim-treesitter/nvim-treesitter) abstract syntax tree generator

# requirements
* neovim (v0.11+)
* ripgrep
* treesitter
* lua-5.1 (yes, specifically 5.1)
* luaJIT
* luarocks (the lua package manager)
