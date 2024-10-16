apt install nfs-kernel-server

mkdir -p /srv/nfs/share
chown -R nobody:nogroup /srv/nfs/share

read -p "Enter your ip: " ip
echo "/srv/nfs/share ${ip}/24(rw,sync,no_subtree_check)" >> /etc/exportfs

service nfs-kernel-server restart
