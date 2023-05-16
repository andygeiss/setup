alias vi='podman run -it --rm --name vim -v $HOME/go:/go:Z,U localhost/base-vim ; sudo chown -R $USER:$USER $HOME/go'
