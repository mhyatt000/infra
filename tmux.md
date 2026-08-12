Root cause: tmux client/server version skew. If a tmux server was started by an older tmux binary and is still running in the background, then a newer tmux client (e.g. after pixi update bumps the tmux package) tries to attach, you get exactly open terminal failed: not a terminal instead of a clearer version-mismatch error.
This is a confirmed tmux bug (still open) — see tmux#4356.

This is plausibly a pixi-specific trigger: since pixi manages tmux per-environment/globally, it's easy for pixi update/reinstall to swap the tmux binary version while an old tmux(1) server process from before the update is still alive in the background — across multiple machines if you're syncing your pixi manifest/lockfile
via chezmoi and updating independently on each host.

Fix:
tmux kill-server      # kills the stale server (drops unsaved session state)
tmux                  # relaunch fresh
or, non-destructively, to check first:
ps aux | grep '[t]mux'   # see if a server is already running, and its version
tmux -V                  # your current client's version
If you don't want to kill existing sessions, start an isolated second server instead:
tmux -L newsocket
