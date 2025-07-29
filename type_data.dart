void main() {
  print('=== BELAJAR TYPE DATA DART ===\n');

  // 1. INTEGER (sama seperti int di C++)
  int umur = 25;
  int skor = 1500;
  print('Umur: $umur tahun');
  print('Skor game: $skor poin');

  // Operasi matematika dengan integer
  int totalPoin = skor + 500;
  print('Total poin setelah bonus: $totalPoin');

  // 2. DOUBLE (sama seperti double di C++)
  double tinggi = 175.5;
  double berat = 68.2;
  print('Tinggi: $tinggi cm');
  print('Berat: $berat kg');

  // Hitung BMI menggunakan kedua variabel
  double bmi = berat / ((tinggi / 100) * (tinggi / 100));
  print('BMI: ${bmi.toStringAsFixed(2)}');

  // 3. STRING (seperti std::string tapi lebih mudah)
  String nama = 'Ahmad';
  String kota = "Jakarta";
  print('Nama: $nama');
  print('Dari kota: $kota');

  // String gabungan menggunakan semua variabel string dan int
  String info = 'Halo $nama dari $kota, umur $umur tahun';
  print(info);

  // 4. BOOLEAN (sama seperti bool di C++)
  bool aktif = true;
  bool premium = false;
  print('User aktif: $aktif');
  print('User premium: $premium');

  // Gunakan boolean dalam kondisi
  if (aktif && !premium) {
    print('User aktif tapi belum premium');
  }

  // 5. LIST (seperti vector di C++)
  List<String> hobi = ['coding', 'gaming', 'musik'];
  List<int> nilai = [80, 90, 75, 88];

  print('Hobi pertama: ${hobi[0]}');
  print('Total hobi: ${hobi.length}');
  print('Nilai pertama: ${nilai[0]}');
  print('Nilai tertinggi: ${nilai.reduce((a, b) => a > b ? a : b)}');

  // Tambah data ke list dan gunakan
  hobi.add('baca');
  nilai.add(95);
  print('Hobi sekarang: $hobi');
  print('Semua nilai: $nilai');

  // 6. MAP (seperti map di C++)
  Map<String, int> nilaiMatkul = {'Matematika': 85, 'Fisika': 90, 'Kimia': 78};

  print('Nilai Matematika: ${nilaiMatkul['Matematika']}');
  print('Nilai Fisika: ${nilaiMatkul['Fisika']}');

  // Tambah data baru dan hitung rata-rata
  nilaiMatkul['Biologi'] = 88;
  int totalNilai = nilaiMatkul.values.reduce((a, b) => a + b);
  double rataRata = totalNilai / nilaiMatkul.length;
  print('Rata-rata nilai: ${rataRata.toStringAsFixed(1)}');
  print('Semua mata kuliah: ${nilaiMatkul.keys.toList()}');

  // 7. NULL (nilai kosong)
  String? alamat; // bisa null
  String email = 'user@email.com'; // tidak bisa null

  print('Alamat: $alamat'); // akan print null
  print('Email: $email');

  // Cek null dan assign value
  // if (alamat != null) {
  //   print('Alamat ada: $alamat');
  // } else {
  //   print('Alamat belum diisi');
  //   alamat = 'Jl. Sudirman No. 1'; // assign value
  //   print('Alamat sekarang: $alamat');
  // }

  // 8. DYNAMIC (bisa berubah tipe - tidak ada di C++)
  dynamic data = 'Awalnya string';
  print('Data: $data (tipe: ${data.runtimeType})');

  data = 42; // sekarang jadi angka
  print('Data sekarang: $data (tipe: ${data.runtimeType})');

  data = [1, 2, 3]; // sekarang jadi list
  print('Data terakhir: $data (tipe: ${data.runtimeType})');

  // 9. FUNCTION (fungsi sebagai variabel)
  String Function(String) sapa = (String nama) {
    return 'Halo $nama!';
  };

  int Function(int, int) tambah = (int a, int b) {
    return a + b;
  };

  // Gunakan kedua function
  String sapaan = sapa('Budi');
  int hasilTambah = tambah(umur, 5); // pakai variabel umur
  print(sapaan);
  print('$umur + 5 = $hasilTambah');

  // 10. ENUM (sama seperti enum di C++)
  Status statusOrder = Status.proses;
  Status statusPembayaran = Status.selesai;

  print('Status order: $statusOrder');
  print('Status pembayaran: $statusPembayaran');

  // Gunakan enum dalam switch
  switch (statusOrder) {
    case Status.menunggu:
      print('Order sedang menunggu konfirmasi');
      break;
    case Status.proses:
      print('Order sedang diproses');
      break;
    case Status.selesai:
      print('Order sudah selesai');
      break;
    case Status.batal:
      print('Order dibatalkan');
      break;
  }

  // Bandingkan enum
  if (statusPembayaran == Status.selesai) {
    print('Pembayaran sudah lunas');
  }

  print('\n=== SEMUA VARIABEL SUDAH DIGUNAKAN! ===');
}

// Definisi enum (seperti di C++)
enum Status { menunggu, proses, selesai, batal }
