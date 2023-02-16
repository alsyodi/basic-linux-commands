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