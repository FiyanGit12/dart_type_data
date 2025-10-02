| No  | Class         | Keterangan Error | Kesalahan                                                                 | Perbaikan                                                                 |
|-----|---------------|------------------|---------------------------------------------------------------------------|---------------------------------------------------------------------------|
| 1   | MakhlukHidup  | ERR1             | `private string nama;` → `string` salah (Java case-sensitive)             | Gunakan `String` (S besar)                                                |
| 2   | MakhlukHidup  | ERR2             | `public double berat = -1.0;` → nilai default negatif tidak logis          | Gunakan nilai aman, misalnya `0.0`                                        |
| 3   | MakhlukHidup  | ERR3             | Constructor `public void MakhlukHidup(String nama)` pakai `void`          | Harusnya `public MakhlukHidup(String nama)` tanpa `void`                  |
| 4   | MakhlukHidup  | ERR8             | Constructor `public makhlukHidup(...)` huruf kecil                        | Nama constructor harus sama dengan class → `MakhlukHidup` (M besar)       |
| 5   | MakhlukHidup  | ERR4             | Pada constructor ke-2: `this.nama = jenis;` (salah assignment)            | Harusnya `this.nama = nama;`                                              |
| 6   | MakhlukHidup  | ERR7             | Pada constructor ke-2: `this.jenis = nama;` (assignment terbalik)         | Harusnya `this.jenis = jenis;`                                            |
| 7   | MakhlukHidup  | ERR5             | Copy constructor: `this.nama = nama;` salah referensi                     | Harusnya `this.nama = other.nama;`                                        |
| 8   | MakhlukHidup  | ERR6             | Copy constructor: `this.umur = this.umur;` salah referensi                | Harusnya `this.umur = other.umur;`                                        |
| 9   | MakhlukHidup  | ERR9             | Setter umur: `setUmur(String umur)` tipe salah (String vs int)            | Harusnya `setUmur(int umur)`                                              |
| 10  | MakhlukHidup  | ERR9   | Setter umur: `this.umur = umur;` tidak valid karena tipe berbeda          | Harusnya `this.umur = umur;` dengan parameter `int`                       |
| 11  | MakhlukHidup  | ERR7   | Setter nama: `nama = this.nama;` assignment terbalik                      | Harusnya `this.nama = nama;`                                              |
| 12  | MakhlukHidup  | ERR10            | Getter info: return type `int` padahal return String                      | Harusnya `public String getInfo()`                                        |
| 13  | MakhlukHidup  | ERR10  | Getter info: `return "Nama=" + ...` mengembalikan String tapi deklarasi int| Harusnya deklarasi return type = `String`                                 |
