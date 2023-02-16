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