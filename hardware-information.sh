#HARDWARE INFORMATION
#melihat pesan-pesan ketika linux booting
dmesg

#melihat informasi cpu
cat /proc/cpuinfo

#melihat status ram
free -h

#melihat konfigurasi pada hardware
lshw

#melihat konfigurasi pada usb
lsusb -tv

#melihat konfigurasi pada port pci
lspci -tv

#melihat informasi disk drive
#menggunakan superuser
hdparm -I /dev/sda

#SEARCHING
#grep (case sensitive)
#mencari pattern/kata di file
grep hello namefile.txt

#mencari pattern/kata di directory
grep -r 12 /home/alsyodi/Documents

#locate dan find
#mencari file atau folder
locate namafile

find /home/alsyodi/ -name "namafolder"
find /home/alsyodi/ -name "namafile.txt"