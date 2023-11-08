#### nama:  Febrian Irvansyah  
#### kelas:  PBP A

# Pemrograman Berbasis Platform - Mobile🐼

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