# Manage Docker as a non-root user
# WARNING: The docker group grants privileges equivalent to the root user.
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

docker run hello-world
