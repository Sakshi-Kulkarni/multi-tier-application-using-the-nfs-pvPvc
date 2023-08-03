sudo mkdir /test /test2
sudo apt-get update
sudo apt install nfs-kernel-server
sudo vi /etc/exports 
# Add directories to this file
#   /test   *(rw,sync,no_root_squash,no_subtree_check)
#   /test2  *(rw,sync,no_root_squash,no_subtree_check)
sudo chmod 777 /test /test2
sudo exportfs -r
sudo systemctl restart nfs-kernel-server
sudo systemctl enable nfs-kernel-server
