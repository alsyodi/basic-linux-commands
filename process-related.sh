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