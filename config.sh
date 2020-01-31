USER=user #sesuaikan username kamu, pun dengan nama interface 
ip a enp0s8 192.168.1.10 up
dnsmasq -i enp0s8 --dhcp-range=192.168.1.100,192.168.1.200 \
--dhcp-boot=lede.elf \
--enable-tftp --tftp-root=/home/$USER/ -d -u $USER -p0 -K --log-dhcp --bootp-dynamic