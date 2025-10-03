# 📝 Laporan Analisa Kode Java  

<div style="padding: 10px; border: 2px solid black; border-radius: 8px; width: 400px; background: #f8f8f8;">
<h2><b>Nama:</b> Alfiyan Arif Maulana Ahmad <br/>
<b>NIM:</b> 32602400034</h2>
</div>

---

## 📌 Soal Tugas
> 1. Temukan, jelaskan, dan perbaiki setiap error berkaitan dengan materi pada `MakhlukHidup.java` dan `TestAccess.java`.  
> 2. Ada 10+ kesalahan. Setiap kesalahan memiliki skor (lihat tabel skor). Skor minimal **LULUS = 60**.  
> 3. Tuliskan output dari `TestAccess` jika kode sudah diperbaiki.  

---

## 🔹 Analisa Class `MakhlukHidup`

### 📂 Kode Versi ERROR
```java
public class MakhlukHidup {

    private string nama;       // ERR1: Class & Object (syntax) ❌ 'string' harus 'String'
    private String jenis;
    public double berat = -1.0;  // ERR2: Class & Object (type) ❌ berat tidak logis negatif, default lebih aman 0.0
    private int umur;

    // Default Constructor
    public MakhlukHidup() {
        this.nama = "Unknown";
        this.jenis = "Unknown";
        this.umur = 15;
        this.berat = 10.0;
    }

    public void MakhlukHidup(String nama) { 
        // ERR3: Constructor/init ❌ salah, karena pakai 'void' → harus 'public MakhlukHidup(String nama)'
        this.nama = nama;
        this.jenis = "Salah";  
        this.umur = 12;
        this.berat = 170.0;
    }

    public makhlukHidup(String nama, String jenis, int umur, double berat) { 
        // ERR1 (duplikat): Class & Object (syntax) ❌ nama constructor tidak sesuai (huruf kecil)
        this.nama = jenis;   // ERR4: Encapsulation / Setter ❌ salah assign → harus 'this.nama = nama'
        this.jenis = nama;   // ERR7: Encapsulation / Setter ❌ salah assign → harus 'this.jenis = jenis'
        this.umur = umur;
        this.berat = berat;
    }

    public MakhlukHidup(MakhlukHidup other) { 
        this.nama = nama;    // ERR5: Constructor (copy) ❌ salah referensi → harus 'this.nama = other.nama'
        this.jenis = other.jenis; 
        this.umur = this.umur; // ERR6: Constructor (copy) ❌ salah referensi → harus 'this.umur = other.umur'
        this.berat = other.berat;
    }

    public void setUmur(String umur) {  
        // ERR9: Class & Object (type) ❌ tipe salah (String → int)
        this.umur = umur;   // ERR9 (duplikat): assignment tidak valid, int vs String
    }

    public void setNama(String nama) {
        nama = this.nama;   // ERR7 (duplikat): assignment terbalik → harus 'this.nama = nama'
    }

    public int getInfo() { 
        // ERR10: Encapsulation / Validation ❌ return type salah (harus String)
        return "Nama=" + nama + ", Jenis=" + jenis 
        + ", Umur=" + umur + ", Berat=" + berat; // ERR10 (duplikat): return String tapi deklarasi int
    }
} 
```

## 🛠️ Perbaikan Error
| No  | Error Code | Jenis Kesalahan            | Penjelasan Kesalahan                                                   | Perbaikan                                                                 |
|-----|------------|----------------------------|------------------------------------------------------------------------|---------------------------------------------------------------------------|
| 1   | ERR1       | Salah penulisan tipe data  | Tulis `string` (s kecil), padahal di Java harus `String` (S besar)     | Ganti `string` → `String`                                                |
| 2   | ERR2       | Nilai awal tidak logis     | Berat diisi `-1.0` (tidak masuk akal untuk berat)                      | Ganti nilai awal jadi `0.0`                                               |
| 3   | ERR3       | Salah deklarasi constructor| Constructor ditulis `void MakhlukHidup(...)`                           | Hapus `void`, jadi `public MakhlukHidup(...)`                             |
| 4   | ERR8       | Nama constructor salah     | Ditulis `makhlukHidup(...)` (huruf kecil)                              | Samakan dengan nama class: `MakhlukHidup(...)`                           |
| 5   | ERR4       | Inisialisasi atribut salah | Di constructor: `this.nama = jenis;`                                   | Harusnya `this.nama = nama;`                                              |
| 6   | ERR7       | Inisialisasi atribut salah | Di constructor: `this.jenis = nama;`                                   | Harusnya `this.jenis = jenis;`                                            |
| 7   | ERR5       | Copy constructor salah     | `this.nama = nama;` padahal harus ambil dari objek lain                | Harusnya `this.nama = other.nama;`                                        |
| 8   | ERR6       | Copy constructor salah     | `this.umur = this.umur;`                                               | Harusnya `this.umur = other.umur;`                                        |
| 9   | ERR9       | Tipe parameter tidak cocok | `setUmur(String umur)` → umur harusnya angka (int), bukan teks (String)| Ganti jadi `setUmur(int umur)`                                            |
| 10  | ERR9  | Assignment tidak valid     | `this.umur = umur;` error karena `umur` bertipe String                 | Setelah tipe parameter benar (int), assignment jadi valid                 |
| 11  | ERR7  | Assignment terbalik       | Di `setNama`: `nama = this.nama;`                                      | Harusnya `this.nama = nama;`                                              |
| 12  | ERR10      | Return type salah          | `getInfo()` dideklarasi `int`, padahal return String                   | Ganti jadi `public String getInfo()`                                      |
| 13  | ERR10 | Return type salah          | `return "Nama=" + ...` hasilnya String, bukan int                      | Sesuaikan tipe kembalian jadi `String`                                   |

## 💻 Kode Program Versi Perbaikan
```Java
public class MakhlukHidup {
    private String nama;
    private String jenis;
    private double berat;
    private int umur;

    public MakhlukHidup() {
        this.nama = "Unknown";
        this.jenis = "Unknown";
        this.umur = 0;
        this.berat = 0.0;
    }

    public MakhlukHidup(String nama, String jenis, int umur, double berat) {
        this.nama = nama;
        this.jenis = jenis;
        this.umur = umur;
        this.berat = berat;
    }

    public MakhlukHidup(MakhlukHidup other) {
        this.nama = other.nama;
        this.jenis = other.jenis;
        this.umur = other.umur;
        this.berat = other.berat;
    }

    public void setUmur(int umur) {
        if (umur >= 0) {
            this.umur = umur;
        } else {
            System.out.println("Umur tidak boleh negatif. Diset ke 0.");
            this.umur = 0;
        }
    }

    public void setNama(String nama) {
        this.nama = nama;
    }

    public String getInfo() {
        return "Nama=" + nama + ", Jenis=" + jenis
             + ", Umur=" + umur + ", Berat=" + berat;
    }
}
```
```Main Java
public class Main {
    public static void main(String[] args) {
        // Membuat object m1 dengan Default Constructor
        // Atribut akan berisi nilai default (Unknown, Unknown, 0, 0.0)
        MakhlukHidup m1 = new MakhlukHidup();
        System.out.println(m1.getInfo());  // Menampilkan info object m1

        // Membuat object m2 dengan Parameterized Constructor
        // Nilai atribut langsung diisi sesuai parameter
        MakhlukHidup m2 = new MakhlukHidup("Harimau", "Hewan", 3, 120.0);
        System.out.println(m2.getInfo());  // Menampilkan info object m2

        // Membuat object m3 dengan Copy Constructor
        // Menyalin semua nilai atribut dari object m2
        MakhlukHidup m3 = new MakhlukHidup(m2);
        System.out.println(m3.getInfo());  // Menampilkan info object m3

        // Menguji Encapsulation + Validation pada atribut umur
        // Setter akan menolak nilai negatif, lalu otomatis diset ke 0
        m3.setUmur(-5); 
        System.out.println(m3.getInfo());  // Umur akan jadi 0

        // Mengubah nama object m3 dengan setter
        // Contoh penggunaan method untuk akses/mengubah atribut private
        m3.setNama("Kucing");
        System.out.println(m3.getInfo());  // Nama berubah jadi "Kucing"
    }
}
```

## 📤 Output Program
```diff
[Default Constructor] Objek MakhlukHidup dibuat.
+ Nama=Unknown, Jenis=Unknown, Umur=0, Berat=0.0

[Parameterized Constructor] Objek MakhlukHidup dibuat dengan parameter.
+ Nama=Harimau, Jenis=Hewan, Umur=3, Berat=120.0

[Copy Constructor] Objek MakhlukHidup disalin dari objek lain.
+ Nama=Harimau, Jenis=Hewan, Umur=3, Berat=120.0

- Umur tidak boleh negatif. Diset ke 0.
+ Nama=Harimau, Jenis=Hewan, Umur=0, Berat=120.0

+ Nama=Kucing, Jenis=Hewan, Umur=0, Berat=120.0
```

## 🔹 Analisa Class `TestAcces`

### 📂 Kode Versi ERROR

