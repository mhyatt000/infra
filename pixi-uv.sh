curl -fsSL https://pixi.sh/install.sh | sh
curl -LsSf https://astral.sh/uv/install.sh | sh

source ~/.bashrc

pixi global install tree watch parallel rsync rclone aria2
pixi global install git git-lfs gh lazygit git-delta just
pixi global install make cmake ninja
pixi global install curl wget mosh iperf3 
pixi global install k9s kubectl helm  # kubernetes
pixi global install terraform ansible chezmoi # cluster ops
pixi global install ffmpeg keyring

# qol
pixi global install starship # cross-shell prompt
pixi global install direnv # per-dir env var
pixi global install entr # run something when files change

# misc
pixi global install flux-core syncthing

# gpus and profiling
pixi global install nvitop gpustat memray py-spy scalene 
# data ops
pixi global install ipython wandb awscli s5cmd

pixi global install fd-find bat eza duf zoxide pixi-pack hyperfine rsync croc wget age go-sops fzf
pixi global install ripgrep dust btop
pixi global install nvim # channel exposes nvim not neovim
pixi global install micromamba
pixi global install huggingface_hub
pixi global install tmux 
