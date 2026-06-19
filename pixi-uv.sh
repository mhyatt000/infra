curl -fsSL https://pixi.sh/install.sh | sh
curl -LsSf https://astral.sh/uv/install.sh | sh

source ~/.bashrc

pixi global install fd-find bat eza duf zoxide pixi-pack hyperfine rsync croc wget age go-sops fzf
pixi global install ripgrep dust btop
pixi global install nvim # channel exposes nvim not neovim
