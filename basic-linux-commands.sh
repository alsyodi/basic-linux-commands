#BASIC LINUX COMMANDS

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



#FILE COMMANDS
#menampilkan isi direktori (file/sub-direktori)
ls
#menampilkan file yang hidden
ls -a

#melihat posisi direktori saat ini
pwd

#membuat folder/direktori
mkdir "nama folder"

#membuat file
touch "nama file.txt"

#menghapus folder/file
rm "nama file.txt"
rm -r "nama folder"/

#copy folder/file
cp -r "nama folder"/ "nama folder baru"
cp namafile.txt namafilebaru.txt

#mengisi data/text ke dalam file
nano namafile.txt

#melihat isi dari sebuah file
cat namafile.txt
more namafile.txt

#menampilkan isi text 10 baris teratas
head namafile.txt

#menampilkan isi text 10 baris terakhir
tail namafile.txt

#encrypt file
gpg -c namafile.txt

#decrypt file
gpg namafile.txt.gpg

#melihat jumlah baris, kata dan byte
wc namafile.txt



#DIRECTORY  NAVIGATION
cd (tekan tab)

#pindah directory
cd Documents/
cd namafolder/

#kembali ke directory sebelumnya
cd ..

#langsung kembali ke home
cd

#langsung masuk ke directory yang diinginkan
cd Documents/namafolder

#FILE COMPRESSION
#compression
tar cf namafile.tar namafile.txt

#decompression
tar xf namafile.tar



#FILE TRANSFER
rsync -a Documents/ Backup/

#memindahkan ke komputer lain
rsync -a Documents/ IP:/home/hello/backup

#USER & GROUPS
#melihat user yang aktif saat ini
id

#melihat user yang terakhir login
last

#melihat siapa yang login
who

#melihat siapa yang login dan aktivitas
w

#menambahkan grup
#menggunakan superuser
groupadd group_name

#melihat daftar group
cat /etc/group

#melihat daftar user
cat /etc/passwd

#menambahkan user
adduser user_name

#memasukan user ke group
usermod -aG group_name user_name

#menghapus user
userdel user_name



#PACKAGE INSTALLATION
#yum, apt atau rpm tergantung linux yang digunakan
#melihat daftar package  sudah terinstall
yum list installed

#mencari package dengan kata kunci tertentu
yum search keywords

#melihat informasi sebuah package
yum info nama_package

#melihat package yang tersedia tapi belum terinstall
yum list available

#install package
yum install nama_package



#PROCESS RELATED
#menampilkan proses-proses yang aktif
ps

#menampilkan proses-proses yabg aktif dalam bentuk pohon/tree
pstree

#menampilkan detail memori yang digunakan oleh sebuah proses
#harus tau proses ID
pmap 2915
#lebih detail
pmap -x 2915

#menampilkan proses-proses yang sedang berjalan secara real-time
top

#mematikan proses yang sedang berjalan
kill 3200

#menampilkan daftar file yang dibuka dengan menjalankan proses
lsof



#SYSTEM MANAGEMENT & INFORMATION
#menampilkan informasi pada sistem linux
uname -r

#melihat informasi pada kernel
uname -a

#menampilkan informasi berapa lama sistem sudah berjalan
uptime

#menampilkan informasi nama komputer
hostname

#menampilkan IP host
hostname -i

#menampilkan list dari histori reboot sistem
last reboot

#menampilkan informasi tanggal dan waktu disistem saat ini
date

#menampilkan informasi kalender saat ini
cal

#melihat user yang menggunakan sistem saat ini
w

#melihat informasi user apa yang sedang digunakan
whoami

#mematikan sistem komputer kita
shutdown 07:50
shutdown now



#DISK USAGE
#melihat informasi pada disk
#melihat space yang digunakan dan tidak digunakan
df -h

#menampilkan inodes yabg tidak digunakan
df -i

#menampilkan jenis, ukuran dan partisi dari disk
#masuk ke super user (root)
fdisk -l

#menampilkan disk usage pada file dan direktori
#menampilkan  disk usage untuk semua file dan direktori
du -ah

#menampilkan disk usage dari direktori saat ini
du -sh

#menampilkan target mount point untuk semua file sistem
findmnt



#SSH LOGIN
#WARNING! Diusahakan jangan menggunakan akun ROOT ketika ingin meremote server
ssh  user@iphost

#WARNING! menggunakan telnet sangat berbahaya karena komunikasinya menggunakan cleartext/plaintext
telnet iphost

#SSH dan Telnet bisa menggunakan tools third party misal: puTTY



#FILE PERMISSION
#file permission di linux: write, read, execute
#melihat file permission dari sebuah file
ls -l "Tes File Permission"

# - rwx rwx rwx
# - file type
#bagian pertama user
#bagian kedua group
#bagian ketiga others

#menggunakan inisial/simbol
#user/owner (u), group (g), and other (o)
# read (r), write (w) and/or execute (x)
chmod u=r, g=rwx, o=w "Tes File Permission"

#menggunakan penomoran
#r(ead) has the value of 4
#w(rite) has the value of 2
#(e)x(ecute) has the value of 1
#no permission has the value of 0
chmod 420 "Tes File Permission"

#7 - for read, write and execute permission
#6 - for read and write privileges
#5 - for read and execute privileges
#4 - for read privileges
chmod 777 "Tes File Permission"



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



#VARIABLES
#arithmetic expresions with let
#perintah let digunakan untuk menjalankan operasi aritmatika
let "hello = 100"; echo $hello
let "hello = 100" "dunia = hello + 100"; echo $dunia

#setiap ekspresi harus gunakan kutip dua (double quote)
let "hey = hello+dunia"; echo $hey
let "hey = hello-dunia"; echo $hey
let "hey = hello*dunia"; echo $hey
let "hey = hello/dunia"; echo $hey
let "hey = hello%dunia"; echo $hey

#perintah let untuk mengoperasikan eksponensial
let "hey = hello ** 2"; echo $hey

#perintah let untuk operator unary
let "hey = -hello"; echo $hey
let "hey = +hello"; echo $hey

#perintah let digunakan untuk operasi bit shifts
let "hey = 10 << 2"; echo $hey
let "hey = 10 >> 2"; echo $hey

#perintah let digunkan untuk operasi bitwise. 
let "hello=100" "hey=~hello"; echo $hey
#ingat yang dioperatorkan bukan desimalnya tapi bit dari desimal tersebut
let "hello=100" "dunia=200" "hey=hello&dunia"; echo $hey #and
let "hello=100" "dunia=200" "hey=hello|dunia"; echo $hey #or
let "hello=100" "dunia=200" "hey=hello^dunia"; echo $hey #xor


#how to export bash variable
#memasukan value ke dalam variable
hello = "contoh export shell"
echo $hello
#variable hello ini hanya dikenal oleh sesi shell saat ini
export hello
bash #buat child shell baru
echo $hello

#cara melihat
export -p

#bisa kombinasikan dengan bash scripting
nano coba-script.sh

    #!/bin/bash
    echo $hello

#kemudian di save
bash
chmod u+x coba-script.sh
./coba-script.sh


#declare variable in bash
declare hello="100"

#perintah untuk melihat semua variable: declare -p
declare -p

declare dunia="200"
declare -p
declare -x dunia
echo $hello $dunia

#deklarasi variable dengan tipe data integer: declare -i
declare -i hello
declare hello=1000
echo $hello
declare -p
#untuk menghilangkannya
declare +i hello

#deklarasi variable dengan memasukan operator matematika
#syaratnya: tipe data dari variable harus integer
declare -i hello="10 * 10"
echo $hello

#cases digunakan untuk mengubah lowercase ke uppercase, atau sebaliknya
declare -u hello="contoh uppercase"
echo $hello
declare -l hello="CONTOH LOWERCASE"
echo $hello

#menjadikan sebuah variable menjadi read only
declare -r dunia=2000
echo $dunia