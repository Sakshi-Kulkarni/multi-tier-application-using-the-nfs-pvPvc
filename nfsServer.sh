sudo mkdir /test /test2
sudo apt-get update
sudo apt install nfs-kernel-server
sudo vi /etc/exports 
sudo chmod 777 /test /test2
sudo exportfs -r
sudo systemctl restart nfs-kernel-server
sudo systemctl enable nfs-kernel-server
