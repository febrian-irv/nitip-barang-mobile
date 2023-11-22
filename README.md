#### nama:  Febrian Irvansyah  
#### kelas:  PBP A

# Pemrograman Berbasis Platform - Mobile🐼

## Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements
<details>
<summary>Click for more detail</summary>
<br>

#### 1️⃣ Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?
Iya, kita bisa melakukan pengambilan data JSON tanpa model yaitu hanya mengambil data JSON dan mengambil data menggunakan key seperti layaknya dictionary. Namun, pendekatan ini tidak lebih baik daripada menggunakan model karena dengan penggunaan model kita bisa memisahkan data-data dalam bentuk objek yang lebih jelas dari pada key-value pair sehingga pengaksesan data sesuai objek akan lebih mudah.

#### 2️⃣ Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
Sebagai class yang dapat menyimpan data terhadap sesi pengguna. Instance ini perlu dibagikan ke semua komponen agar setiap komponen mendapatkan data yang sama pada setiap sesi dan setiap komponen akan relevan terhadap sesi terakhir.

#### 3️⃣ Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.
- Pembuatan models yang berisi class dari objek serta fields yang akan digunakan oleh objek tersebut.
- Dilakukan fetch data dari web app django yang mempunyai data JSON dan di decode.
- Dari setiap data akan diiterasi dan diproses agar data dimasukkan ke class dan membentuk objek tersendiri.

#### 4️⃣ Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.
- Membuat variabel input pada flutter untuk user dan password.
- Memanggil fungsi login pada django dari flutter dengan mencantumkan parameter variabel user dan password. Memanfaatkan request cookie request.
- fungsi login pada django akan memproses user dan password dan mereturn response JSON sebagai penanda terautentikasi atau tidak.
- Jika response login terautentikasi maka akan berpindah ke homepage.

#### 5️⃣ Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.
- FutureBuilder: untuk mengerjakan task asinkronus
- ListView: untuk display scrollable list of widget
- SizedBox: Membuat box dengan spesifikasi ukuran tertentu

#### 6️⃣ Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial).

##### ✅ Memastikan deployment proyek tugas Django kamu telah berjalan dengan baik.
- Dengan mengupdate kebutuhan settings pada projek django agar tidak terjadi konflik saat pengitegrasian
- mengudate requirements.txt agar semua modul yang dibutuhkan terpenuhi.

##### ✅  Membuat halaman login pada proyek tugas Flutter.
- Membuat halaman login yang diletakkan pada screens.
- membuat field yang dihubungkan dengan suatu variabel yang akan menyimpan user dan password.

##### ✅ Mengintegrasikan sistem autentikasi Django dengan proyek tugas Flutter.
- membuat fungsi login pada django yang akan menerima data password dan user dan mereturn json.
- membuat routing pada login.
- setelah memasukkan data password dan user pada field flutter, proses autentikasi dengan memanfaatkan cookie request untuk mengakses fungsi pada django dan mereturn json hasil autentikasi.
- memindahkan ke laman homepage apabila terautentikasi.

##### ✅ Membuat halaman yang berisi daftar semua item yang terdapat pada endpoint JSON di Django yang telah kamu deploy.
- membuat model item sebagai penyimpan field data
- melakukan fetch data dari laman json web django dan diubah ke bentuk objek item yang telah dibuat.
- megiterasikan tiap data dari objek untuk ditampilkan.

##### ✅ Membuat halaman detail untuk setiap item yang terdapat pada halaman daftar Item.
- membuat tombol detail pada tiap item


</details>

## Tugas 8: Flutter Navigation, Layouts, Forms, and Input Elements
<details>
<summary>Click for more detail</summary>
<br>

#### 1️⃣ Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!
Navigator pada flutter menggunakan sistem stack dimana dengan metode Navigator.push() akan menambah stack pada layar sehingga page yang berada pada parameter push akan berada diatas stack layar teratas. Navigator.pushReplacement() akan mengganti layer teratas dari stack dengan layer baru pada parameter pushReplacement sehingga jumlah stack masih sama.
Contoh:
- push: Terdapat halaman katalog yang menampilkan seluruh ketersediaan barang dan pada setiap barang dapat diekspansi detail. Maka saat terjadi interaksi dengan detail barang, detail barang akan muncul diatas katalog tersebut dan dapat di pop untuk kembali ke katalog.
- pushReplacement: Pada saat login dan user telah diautentikasi maka saat mau berpindah ke laman beranda dapat menggunakan pushReplacement karena login sudah tidak berhubungan dengan beranda atau proses autentikasi. Jika laman beranda dilakukan pop maka tidak kembali ke login.

#### 2️⃣ Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!
1. Single-child layout widget: Mengontrol satu child yang dikontrol berdasarkan posisi dan ukuran parent. contohnya: Align, Center, Container.
2. Multi-child layout widgets: Untuk mengontrol posisi dari beberapa child dalam satu layout. contohnya: Row, Column, Stack.
3. Sliver widgets: Untuk melakukan kontrol spesial yang biasanya berhubungan dengan efek custom scrolling. contohnya: SliverList, SliverGrid, SliverAppBar.

#### 3️⃣ Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!
Pada tugas ini digunakan widget TextFormField untuk menerima input, penggunaan widget ini karena pengguna dapat menginput segala jenis karakter untuk dimasukkan ke dalam field dan validasinya dilakukan dengan menggunakan conditionals setelah user memasukkan input sehingga dapat menghindari exception.
elemen yang diminta adalah:
- Nama Barang: untuk menyimpan nama penitip barang.
- Jumlah Barang: untuk mengetahui jumlah barang yang dititipkan.
- Deskripsi Barang: untuk mengetahui detail dari barang.

#### 4️⃣ Bagaimana penerapan clean architecture pada aplikasi Flutter?
Penerapannya adalah dengan melakukan pengelompokan terhadap file-file yang terdapat pada folder lib sesuai dengan fungsionalitasnya sehingga terlihat adanya seperation of concerns. Pada projek ini menggunakan folder baru yaitu screens sebagai folder yang menyimpan laman-laman yang terdapat pada aplikasi tersebut dan terdapat folder widgets yang menyimpan class widget yang telah dibuat oleh pengembang perangkat lunak.
Secara umum clean architecture pada flutter ada tiga yaitu, feature layer yang merepresentasikan aplikasi dan terdapat event handler, domain layer yangberguna dalam logic dari aplikasi, dan data layer yang berguna untuk mengambil data yang bisa dalam bentuk API call atau local database.

#### 5️⃣ Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial).

##### ✅ Membuat minimal satu halaman baru pada aplikasi, yaitu halaman formulir tambah item baru
- membuat folder screen pada lib yang akan menjadi tempat file form_nitip.dart:
- membuat class ShopFormPage dan ShopFormPageState.
- Pada ShopFormPageState, build widget yang berisi body berupa Form widget dengan 3 child yaitu nama, jumlah, dan deskripsi.
- membuat tombol save.

##### ✅ Mengarahkan pengguna ke halaman form tambah item baru ketika menekan tombol Tambah Item pada halaman utama.
- pada menu.dart ketika nama item yang ditekan adalah "Tambah item" maka panggil Navigator.push yang akan mengarahkan ke ShopFormPage.

##### ✅  Memunculkan data sesuai isi dari formulir yang diisi dalam sebuah pop-up setelah menekan tombol Save pada halaman formulir tambah item baru.
- saat tombol save ditekan membuat isi dari onPressed yang berisi data-data yang baru saja dimasukkan dengan menggunakan dialog.

##### ✅  Membuat sebuah drawer pada aplikasi
- membuat folder widgets yang akan berisi left_drawer.dart
- pada file tersebut akan dibuat class yang build widget dengan mereturn widget Drawer.
- pada Drawer akan memiliki children ListTile jika di tekan akan navigate ke laman yang dituju.


</details>

## Tugas 7: Elemen Dasar Flutter
<details>
<summary>Click for more detail</summary>
<br>

#### 1️⃣ Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
Perbedaan utama antara stateless dan stateful widget adalah bagaimana respon widget saat terjadi interaksi dari pengguna. Dalam stateful widget terdapat suatu state yang menyimpan data dari objek dan data tersebut berkemungkinan untuk berubah selama 'lifetime' dari widget tersebut, contohnya adalah Checkbox dan Form. Berbeda dengan stateful, stateless widget memiliki state yang tidak akan berubah setelah state tersebut dibentuk, contohnya bisa berupa Text atau IconButtons.

#### 2️⃣ Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.
1. Scaffold: Sebagai dasar dari material design.
2. AppBar: Sebagai bagian atas aplikasi yang biasa berisi nama aplikasi.
3. Padding: Memberi padding terhadap child.
4. Text: Menampilkan paragraf teks.
5. Container: Sebuah box yang yang menyimpan widget lain.
6. Material: Implementasi material design visual.
7. InkWell: Material widget yang memberi respon splash saat interaksi.
8. SnackBar: Pesan teks sementara pada bagian bawah layar.
9. Icon: Menampilkan Icon.
10. Center: Menengahkan child.
11. ThemeData: Mendefinisikan tema dari aplikasi.
12. ColorScheme: Mendefinisikan kumpulan warna yang digunakan untuk konfigurasi tema.

#### 3️⃣ Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial).

##### ✅ Membuat sebuah program Flutter baru dengan tema inventory seperti tugas-tugas sebelumnya.
- Membuat repositori baru dengan nama nitip-barang-mobile
- Membuat projek flutter baru pada direktori lokal dengan command `flutter create nitip_barang_mobile` dan masuk kedalam direktori projek tersebut.
- Menghubungkan projek pada direktori lokal tersebut dengan repositori github.

##### ✅ Membuat tiga tombol sederhana dengan ikon dan teks untuk:
-> Melihat daftar item (Lihat Item)  
-> Menambah item (Tambah Item)  
-> Logout (Logout)  

- Membuat Widget MyHomePage yang akan menjadi struktur dasar dari homepage
- Membuat suatu class yang akan menjadi penyimpan data dari tiap tombol.
- Pada MyHomePage mempersiapkan data tombol dengan mengoconstruct tombol sesuai data yang dibutuhkan (nama, ikon, warna) dan menyimpannya pada suatu list bernama items.
- Membuat widget yang menjadi child dari MyHomePage bernama ShopCard yang akan menghandle items pada MyHomePage untuk dibentuk menjadi sebuah tombol.

##### ✅ Memunculkan Snackbar dengan tulisan:
-> "Kamu telah menekan tombol Lihat Item" ketika tombol Lihat Item ditekan.  
-> "Kamu telah menekan tombol Tambah Item" ketika tombol Tambah Item ditekan.  
-> "Kamu telah menekan tombol Logout" ketika tombol Logout ditekan.  

- Pada build dari ShopCard mempersiapkan OnTap yang akan menghandle jika ShopCard diklik, untuk kasus ini dengan ScaffoldMessenger
- Pada ScaffoldMessenger akan memembentuk Snackbar yang muncul jika diklik dan berisi data sesuai items yang diklik.

#### 4️⃣ Bonus: Kamu akan mendapatkan nilai bonus pada penilaian tugas ini apabila kamu mengimplementasikan warna-warna yang berbeda untuk setiap tombol (Lihat Item, Tambah Item, dan Logout).
Dengan menambah atribut pada ShopItem berupa Color dan menambah parameter warna pada tiap item di items. Setelah itu pada widget ShopCard warna akan disesuaikan dengan item.color nya

</details>