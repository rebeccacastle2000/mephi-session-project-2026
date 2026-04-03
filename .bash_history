ip link show
sudo nmci connection modify enp0s ipv4.method manual
sudo nmcli connection modify enp0s ipv4.method manual
sudo nmcli connection modify enp0s3 ipv4.method manual
sudo nmcli connection modify enp0s3 ipv4.method manual ipv4.adress 192.168.1.1 ipv4.dns "8.8.8.8"
sudo nmcli connection modify enp0s3 ipv4.method manual ipv4.address 192.168.1.1 ipv4.dns "8.8.8.8"
sudo nmcli connection down enp0s3 && sudo nmcli connection up enp0s3 
sudo hostnamectl set-hostname mephi-2026.domain.local
ip addr show enp0s3 | grep "inet"
hostnamectl
ip route | grep default
nmcli connection show enp0s3
sudo nmcli connection modify enp0s3 ipv4.method manual ipv4.address 192.168.1.100/24 ipv4.gateway 192.168.1.1 ipv4.dns "8.8.8.8"
sudo nmcli connection down enp0s3
sudo nmcli connection up enp0s3
ip addr show enp0s3 | grep "inet"
ip route | grep default
ping -c 4 8.8.8.8 > /tmp/network_check.txt
ping -c 4 192.168.1.1 > /tmp/network_check.txt
cat/tmp/network_check.txt
cat /tmp/network_check.txt
sudo poweroff
