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