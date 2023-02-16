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