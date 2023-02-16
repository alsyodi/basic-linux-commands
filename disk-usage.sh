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