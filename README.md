#flutter unit testing app



# Unit Testing
-   Tujuannya adalah memeriksa apakah logika aplikasi berjalan dengan benar dalam berbagai kondisi.
-   Menguji unit terkecil dari aplikasi, seperti fungsi, metode, atau kelas.
-   Contoh: Memastikan fungsi penjumlahan `add(2, 3)` selalu menghasilkan `5`

Unit testing adalah bagian dari proses _automated testing_ yang fokus menguji bagian kecil kode (_unit_) secara terpisah untuk memastikan keandalannya.

Unit dapat berupa:

-   **Fungsi** (contoh: fungsi perhitungan sederhana)
-   **Metode** (fungsi di dalam kelas)
-   **Kelas**,
-   **Variabel**,
-   atau bahkan **state** (keadaan aplikasi).

Unit testing adalah **lapisan paling bawah** dalam rangkaian pengujian (_test suite_). 

1.  **Arrange (Persiapan)**
    -   Di fase ini, kita menyiapkan semua yang dibutuhkan untuk pengujian.
    -   Contohnya: membuat objek dari unit yang akan diuji.

2.  **Act (Aksi)**
    -   Menjalankan unit yang diuji dengan memberikan _input_ atau argumen tertentu.
    -   Hasil dari proses ini biasanya disimpan untuk diperiksa nanti.
3.  **Assert (Verifikasi)**
    -   Di fase ini, kita memeriksa apakah hasil yang diberikan oleh unit sesuai dengan yang diharapkan.
    -   Contohnya:
        -   Memastikan metode tertentu telah dipanggil.
        -   Memastikan hasil akhirnya sama dengan nilai yang diharapkan.

**Poin Utama**

1.  **Manajemen Rute**: Menggunakan `GoRouter` untuk mengatur navigasi, termasuk rute bersarang (nested routes).
2.  **Manajemen State**: Menggunakan `Provider` untuk menyebarkan state (`FavoritesModel`) ke widget lain.
3.  **Material 3**: Menggunakan fitur desain terbaru dari Flutter.
4.  **Struktur Modular**: Model (`FavoritesModel`) dan layar (`HomeScreen`, `FavoritesScreen`) terpisah dalam file yang berbeda untuk kemudahan pengelolaan.




## *Fungsi Utama dari Kode*

1.  **Menyimpan Data Favorit**:
    -   Menggunakan list `_favoriteItems` untuk menyimpan item favorit pengguna.
2.  **Reaktif**:
    -   Menggunakan **`ChangeNotifier`** untuk memastikan aplikasi merespons secara otomatis jika ada perubahan data favorit.
3.  **Operasi Data**:
    -   **`add`**: Menambahkan item ke favorit.
    -   **`remove`**: Menghapus item dari favorit.
    -   **`items`**: Memberikan akses ke daftar favorit, tetapi tetap menjaga enkapsulasi.