# Development environment setup

1. Install FiraCode Nerd Font from [https://www.nerdfonts.com/font-downloads](https://www.nerdfonts.com/font-downloads).
1. Install `ripgrep`, `rust`, `node`, `tmux`, `soucekit-lsp`, `neovim`, and `fd` with Homebrew.
        
        brew install rustup node tmux neovim fd ripgrep luarocks fzf bat swift-format zsh-syntax-highlighting pgformatter stylua

1. Install djlint in the local virtualenv.

        pip install djlint

1. Set Terminal background to any dark grey with white text.
1. Copy `nvim` to `~/.config/nvim`.
1. Copy `.tmux.conf` to `~/.tmux.conf`.
1. Install `tpm` with `git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm`. Remember to run `<prefix> + CTRL I`.
1. Install ElixirLS to `~/.elixir-ls`.
1. Install XCode Build Server to `~/.xcode-ls`.
