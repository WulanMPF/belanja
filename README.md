# JOBSHEET 6 PRAKTIKUM 5

Nama: Wulan Maulidya P. F

Kelas: TI-3H

No. Absen: 27

NIM: 2241720174

---

## Langkah 1: Siapkan project baru
Sebelum melanjutkan praktikum, buatlah sebuah project baru Flutter dengan nama belanja dan susunan folder seperti pada gambar berikut. Penyusunan ini dimaksudkan untuk mengorganisasi kode dan widget yang lebih mudah.

![Praktikum 5](/images/p5_1.png)

## Langkah 2: Mendefinisikan Route
Buatlah dua buah file dart dengan nama home_page.dart dan item_page.dart pada folder pages. Untuk masing-masing file, deklarasikan class HomePage pada file home_page.dart dan ItemPage pada item_page.dart. Turunkan class dari StatelessWidget. Gambaran potongan kode dapat anda lihat sebagai berikut.

![Praktikum 5](/images/p5_2.png)

## Langkah 3: Lengkapi Kode di main.dart
Setelah kedua halaman telah dibuat dan didefinisikan, bukalah file main.dart. Pada langkah ini anda akan mendefinisikan Route untuk kedua halaman tersebut. Definisi penamaan route harus bersifat unique. Halaman HomePage didefinisikan sebagai /. Dan halaman ItemPage didefinisikan sebagai /item. Untuk mendefinisikan halaman awal, anda dapat menggunakan named argument initialRoute. Gambaran tahapan ini, dapat anda lihat pada potongan kode berikut.

![Praktikum 5](/images/p5_3.png)

## Langkah 4: Membuat data model
Sebelum melakukan perpindahan halaman dari HomePage ke ItemPage, dibutuhkan proses pemodelan data. Pada desain mockup, dibutuhkan dua informasi yaitu nama dan harga. Untuk menangani hal ini, buatlah sebuah file dengan nama item.dart dan letakkan pada folder models. Pada file ini didefinisikan pemodelan data yang dibutuhkan. Ilustrasi kode yang dibutuhkan, dapat anda lihat pada potongan kode berikut.

![Praktikum 5](/images/p5_4.png)

## Langkah 5: Lengkapi kode di class HomePage
Pada halaman HomePage terdapat ListView widget. Sumber data ListView diambil dari model List dari object Item. Gambaran kode yang dibutuhkan untuk melakukan definisi model dapat anda lihat sebagai berikut.

![Praktikum 5](/images/p5_5.png)

## Langkah 6: Membuat ListView dan itemBuilder
Untuk menampilkan ListView pada praktikum ini digunakan itemBuilder. Data diambil dari definisi model yang telah dibuat sebelumnya. Untuk menunjukkan batas data satu dan berikutnya digunakan widget Card. Kode yang telah umum pada bagian ini tidak ditampilkan. Gambaran kode yang dibutuhkan dapat anda lihat sebagai berikut.

![Praktikum 5](/images/p5_6.png)

## Langkah 7: Menambahkan aksi pada ListView
Item pada ListView saat ini ketika ditekan masih belum memberikan aksi tertentu. Untuk menambahkan aksi pada ListView dapat digunakan widget InkWell atau GestureDetector. Perbedaan utamanya InkWell merupakan material widget yang memberikan efek ketika ditekan. Sedangkan GestureDetector bersifat umum dan bisa juga digunakan untuk gesture lain selain sentuhan. Pada praktikum ini akan digunakan widget InkWell.

Untuk menambahkan sentuhan, letakkan cursor pada widget pembuka Card. Kemudian gunakan shortcut quick fix dari VSCode (Ctrl + . pada Windows atau Cmd + . pada MacOS). Sorot menu wrap with widget... Ubah nilai widget menjadi InkWell serta tambahkan named argument onTap yang berisi fungsi untuk berpindah ke halaman ItemPage. Ilustrasi potongan kode dapat anda lihat pada potongan berikut.

![Praktikum 5](/images/p5_7a.png)

*When Click Sugar Item:*

![Praktikum 5](/images/p5_7b.png)

# JOBSHEET 6 TUGAS PRAKTIKUM 2

---

## 1. Untuk melakukan pengiriman data ke halaman berikutnya, cukup menambahkan informasi arguments pada penggunaan Navigator. Perbarui kode pada bagian Navigator menjadi seperti berikut.

![Tugas 2](/images/tgs_1a.png)

*When Click Sugar Item:*

![Tugas 2](/images/tgs_1b.png)

## 2. Pembacaan nilai yang dikirimkan pada halaman sebelumnya dapat dilakukan menggunakan ModalRoute. Tambahkan kode berikut pada blok fungsi build dalam halaman ItemPage. Setelah nilai didapatkan, anda dapat menggunakannya seperti penggunaan variabel pada umumnya.

![Tugas 2](/images/tgs_2a.png)

*When Click Salt Item:*

![Tugas 2](/images/tgs_2b.png)

## 3. Pada hasil akhir dari aplikasi belanja yang telah anda selesaikan, tambahkan atribut foto produk, stok, dan rating. Ubahlah tampilan menjadi GridView seperti di aplikasi marketplace pada umumnya.

*Modifikasi item.dart:*

![Tugas 2](/images/tgs_3a.png)

*Modifikasi home_page.dart:*

![Tugas 2](/images/tgs_3b.png)

*Modifikasi item_page.dart:*

![Tugas 2](/images/tgs_3c.png)

*When Click Sugar Item:*

![Tugas 2](/images/tgs_3d.png)

## 4. Silakan implementasikan Hero widget pada aplikasi belanja Anda dengan mempelajari dari sumber ini: https://docs.flutter.dev/cookbook/navigation/hero-animations

*Modifikasi home_page.dart:*

![Tugas 2](/images/tgs_4a.png)

*Modifikasi item_page.dart:*

![Tugas 2](/images/tgs_4b.png)

*Output:*

![Tugas 2](/images/tgs_4c.gif)

## 5. Sesuaikan dan modifikasi tampilan sehingga menjadi aplikasi yang menarik. Selain itu, pecah widget menjadi kode yang lebih kecil. Tambahkan Nama dan NIM di footer aplikasi belanja Anda.

*Modifikasi item.dart:*

![Tugas 2](/images/tgs_5a.png)

*Modifikasi home_page.dart:*

![Tugas 2](/images/tgs_5b.png)

*Modifikasi item_page.dart:*

![Tugas 2](/images/tgs_5c.png)

*Modifikasi item_widget.dart:*

![Tugas 2](/images/tgs_5d.png)

*Output:*

![Tugas 2](/images/tgs_5e.gif)

## 6. Selesaikan Praktikum 5: Navigasi dan Rute tersebut. Cobalah modifikasi menggunakan plugin go_router, lalu dokumentasikan dan push ke repository Anda berupa screenshot setiap hasil pekerjaan beserta penjelasannya di file README.md. Kumpulkan link commit repository GitHub Anda kepada dosen yang telah disepakati!

*Modifikasi pubspec.yaml:*

![Tugas 2](/images/tgs_6a.png)

*Modifikasi main.dart:*

![Tugas 2](/images/tgs_6b.png)

*Modifikasi home_page.dart:*

![Tugas 2](/images/tgs_6c.png)

*Modifikasi item_page.dart:*

![Tugas 2](/images/tgs_6d.png)

*Modifikasi item_widget:*

![Tugas 2](/images/tgs_6e.png)

*Output:*

![Tugas 2](/images/tgs_6f.gif)