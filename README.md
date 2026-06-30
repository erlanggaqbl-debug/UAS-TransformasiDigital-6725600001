# UAS-TransformasiDigital-6725600001
Backup Data Menggunakan Google Drive dengan Rclone di Ubuntu

Deskripsi

Proyek ini merupakan implementasi sistem backup dan restore data berbasis cloud menggunakan Ubuntu Server, Rclone, dan Google Drive. Sistem ini bertujuan untuk mencegah kehilangan data akibat kerusakan perangkat dengan menyimpan salinan data penting secara otomatis di Google Drive.

Fitur Utama

- Backup data lokal Ubuntu ke Google Drive secara mudah menggunakan Rclone.

- Restore data dari Google Drive ke Ubuntu ketika terjadi kehilangan data.

- Simulasi penghapusan data dan pemulihan data untuk pengujian keberhasilan backup.

Alat dan Bahan

- Laptop/PC dengan Ubuntu

- Koneksi internet

- Rclone (alat penghubung antara Ubuntu dan Google Drive)

- Akun Google Drive

Cara Kerja

1. Instal dan konfigurasi Rclone pada Ubuntu untuk terhubung dengan Google Drive.

2. Buat folder data penting di Ubuntu untuk disimpan.

3. Jalankan perintah backup menggunakan rclone copy untuk mengirim data ke Google Drive.

4. Simulasikan kehilangan data dengan menghapus file lokal.

5. Restore data dari Google Drive ke Ubuntu menggunakan perintah restore dari Rclone.

6. Verifikasi data berhasil dipulihkan dengan mengecek isi folder dan file.

Langkah Instalasi

sudo apt update

sudo apt install rclone -y

rclone config  # Konfigurasi koneksi ke Google Drive

Contoh Perintah Backup dan Restore

mkdir ~/DataPenting

echo "Data Mahasiswa Sistem Informasi" > ~/DataPenting/mahasiswa.txt

rclone copy ~/DataPenting akmaldrive:backup-ubuntu

rm -rf ~/DataPenting

rclone copy akmaldrive:backup-ubuntu ~/DataPenting

Kesimpulan

Sistem backup menggunakan Ubuntu Server, Rclone, dan Google Drive efektif dalam mencegah kehilangan data akibat kerusakan perangkat. Backup berbasis cloud memberikan solusi aman dan otomatis untuk menyimpan serta memulihkan data penting
