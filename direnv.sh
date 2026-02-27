curl -sfL https://direnv.net/install.sh | bash
# eval "$(direnv hook bash)"
echo 'eval "$(direnv hook $(basename $SHELL))"' >> ~/.bashrc
exec $SHELL

