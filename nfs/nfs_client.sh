apt install nfs-common

mkdir -p /srv/nfs/share
chown -R nobody:nogroup /srv/nfs/share

read -p "Enter server ip: " ip

echo "${ip}:/srv/nfs/share /mnt/nfs/share nfs defaults 0 0" >> /etc/fstab
mount -a