# P03 – Equipment Rental

## Deskripsi Aplikasi

Equipment Rental adalah aplikasi sederhana berbasis Flutter untuk menampilkan daftar peralatan yang dapat disewa. Aplikasi ini memiliki tiga halaman, yaitu halaman daftar equipment, halaman detail equipment, dan halaman form rental.

Pengguna dapat memilih equipment dari daftar, melihat informasi detail seperti nama, kategori, dan status, kemudian mengisi form penyewaan dengan nama dan email customer. Form memiliki validasi agar data tidak boleh kosong. Setelah form berhasil dikirim, status equipment akan berubah menjadi `rented`.

Dalam aplikasi ini, saya menggunakan `ListView.builder` untuk menampilkan data equipment, custom widget `EquipmentCard` yang digunakan kembali pada daftar, serta `StatefulWidget` dan `setState` untuk memperbarui status equipment. Navigasi antarhalaman menggunakan `Navigator.push` dan `Navigator.pop`.

## Kendala dan Proses Debugging

Kendala yang sempat membuat saya kesulitan adalah aplikasi gagal dijalankan pada perangkat Android saat proses build Flutter. Awalnya, saya menduga masalah berasal dari konfigurasi Gradle. Namun, setelah membaca pesan error pada terminal, saya menemukan pesan `There is not enough space on the disk`.

Untuk memastikan penyebabnya, saya memeriksa kapasitas penyimpanan drive C: melalui File Explorer dan ternyata ruang kosong hanya tersisa sekitar 1,5 GB. Saya kemudian membersihkan file sementara Windows untuk menambah ruang penyimpanan. Setelah itu, saya menjalankan kembali aplikasi menggunakan perintah `flutter run` dan aplikasi berhasil dijalankan di Samsung A51.

Dari pengalaman tersebut, saya belajar bahwa proses debugging tidak hanya dilakukan dengan memeriksa kode program, tetapi juga dengan membaca pesan error dan memeriksa lingkungan pengembangan.
