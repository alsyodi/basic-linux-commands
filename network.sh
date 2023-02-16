#NETWORK
#menampilkan semua daftar ip address di komputer
ip addr show

#menampilkan semua daftar interface yang ada di komputer
ifconfig

#melihat status proses, port, protokol, yang listening
#opsi -pnltu digunakan untuk melihat proses yang menggunakan protokol tcp dan udp
netstat -pnltu
#fun fact: netstat sering digunakan oleh net-admin untuk mengelola server

#melihat informasi tentang domain di komputer
whois iphost
whois www.google.com

#menampilkan informasi dns pada sebuah host
dig www.google.com

#melihat ip address dari sebuah domain
host www.google.com

#menampilkan alamat ip address local
hostname -I