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
    public double berat = -1.0;  // ERR2: Class & Object (type) ❌ berat harusnya tidak negatif
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
        this.nama = jenis;   // ERR4: Encapsulation / Setter ❌ salah penulisan → harus 'this.nama = nama'
        this.jenis = nama;   // ERR7: Encapsulation / Setter ❌ salah penulisan → harus 'this.jenis = jenis'
        this.umur = umur;
        this.berat = berat;
    }

    public MakhlukHidup(MakhlukHidup other) { 
        this.nama = nama;    // ERR5: Constructor (copy) ❌ salah penulisan harusnya kalo other jadi other.nama;
        this.jenis = other.jenis; 
        this.umur = this.umur; // ERR6: Constructor (copy) ❌ salah penulisan harusnya kalo other jadi other.umur;
        this.berat = other.berat;
    }

    public void setUmur(String umur) {  
        // ERR9: Class & Object (type) ❌ salah tipe data harusnya umur pake int
        this.umur = umur;   // ERR9 Tetap salah karna yang diatas salah
    }

    public void setNama(String nama) {
        nama = this.nama;   // ERR7 Kebalik harusnya this.nama = nama;
    }

    public int getInfo() { 
        // ERR10: Encapsulation / Validation ❌ return type salah (harus String)
        return "Nama=" + nama + ", Jenis=" + jenis 
        + ", Umur=" + umur + ", Berat=" + berat; // ERR10  return String tapi deklarasi int
    }
} 
```

## 🛠️ Perbaikan Error
| No | Class        | Error                                                                | Perbaikan                                                          |
| -- | ------------ | -------------------------------------------------------------------- | ------------------------------------------------------------------ |
| 1  | MakhlukHidup | `private string nama;` → ❌ salah, `string` tidak valid di Java       | ✅ Ganti jadi `private String nama;`                                |
| 2  | MakhlukHidup | `public double berat = -1.0;` → ❌ berat tidak boleh negatif          | ✅ Inisialisasi dengan `0.0` atau validasi di setter                |
| 3  | MakhlukHidup | `public void MakhlukHidup(String nama)` → ❌ constructor pakai `void` | ✅ Hapus `void`, jadikan `public MakhlukHidup(String nama)`         |
| 4  | MakhlukHidup | `this.nama = jenis;` → ❌ salah assignment                            | ✅ Seharusnya `this.nama = nama;`                                   |
| 5  | MakhlukHidup | `this.nama = nama;` di copy constructor → ❌ salah referensi          | ✅ Seharusnya `this.nama = other.nama;`                             |
| 6  | MakhlukHidup | `this.umur = this.umur;` di copy constructor → ❌ tidak berubah       | ✅ Seharusnya `this.umur = other.umur;`                             |
| 7  | MakhlukHidup | `this.jenis = nama;` → ❌ salah assignment                            | ✅ Seharusnya `this.jenis = jenis;`                                 |
| 8  | MakhlukHidup | Nama constructor `public makhlukHidup(...)` → ❌ huruf kecil          | ✅ Harus konsisten `public MakhlukHidup(...)`                       |
| 9  | MakhlukHidup | `public void setUmur(String umur)` → ❌ tipe salah (String)           | ✅ Harus `public void setUmur(int umur)`                            |
| 10 | MakhlukHidup | `this.umur = umur;` di setter salah karena tipe data                 | ✅ Setelah ganti ke `int`, bisa `this.umur = umur;` dengan validasi |
| 11 | MakhlukHidup | `nama = this.nama;` di setter → ❌ assignment terbalik                | ✅ Seharusnya `this.nama = nama;`                                   |
| 12 | MakhlukHidup | `public int getInfo()` → ❌ return type salah                         | ✅ Harus `public String getInfo()`                                  |
| 13 | MakhlukHidup | `return "Nama="...` di `getInfo` → ❌ return String tapi method `int` | ✅ Sesuaikan: `public String getInfo()` dan return String benar     |




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

## 🔹 Analisa Class `TestAcces`

### 📂 Kode Versi ERROR
```java
public class TestAccess {
    public static void main(String[] args) {
        MakhlukHidup m = new MakhlukHidup();

        m.nama = "Kucing";  // ERR1/ERR2/ERR4 → nggak bisa akses langsung atribut private, harus pakai setter (m.setNama)

        MakhlukHidup m2 = new MakhlukHidup("Harimau", "Hewan", 3, 120.0);

        MakhlukHidup m3 = new MakhlukHidup(m2);

        System.out.println(m.getInfo());

        System.out.println(m2.getInfo());

        m2.MakhlukHidup("Kuda");  // ERR3 → constructor nggak bisa dipanggil seperti method, perbaikan pakai setter (m2.setNama)

        System.out.println(m2.getInfo());

        m3.setUmur(-10);  // ERR10 → umur negatif nggak valid, otomatis diset 0 oleh setter

        System.out.println(m3.getInfo());
    }
}
```
## 🛠️ Perbaikan Error
| No | Class      | Error                                                                | Perbaikan                                                   |
| -- | ---------- | -------------------------------------------------------------------- | ----------------------------------------------------------- |
| 1  | TestAccess | `m.nama = "Kucing";` → ❌ nggak bisa akses atribut `private` langsung | ✅ Harus pakai setter → `m.setNama("Kucing");`               |
| 2  | TestAccess | `m2.MakhlukHidup("Kuda");` → ❌ constructor dipanggil seperti method  | ✅ Tidak boleh begitu, cukup pakai `m2.setNama("Kuda");`     |
| 3  | TestAccess | `m3.setUmur(-10);` → ❌ setter dipanggil dengan umur negatif          | ✅ Setter sudah handle otomatis → nilai negatif diset ke `0` |



## 💻 Kode Program Versi Perbaikan
```java
public class TestAccess {
    public static void main(String[] args) {
        // Objek m dibuat dengan Default Constructor
        MakhlukHidup m = new MakhlukHidup();
        m.setNama("Kucing");  
        System.out.println(m.getInfo());

        // Objek m2 dibuat dengan Parameterized Constructor
        MakhlukHidup m2 = new MakhlukHidup("Harimau", "Hewan", 3, 120.0);
        System.out.println(m2.getInfo());

        // Objek m3 dibuat dengan Copy Constructor (salin dari m2)
        MakhlukHidup m3 = new MakhlukHidup(m2);
        System.out.println(m3.getInfo());

        // Ubah nama m2 pakai setter
        m2.setNama("Kuda");
        System.out.println(m2.getInfo());

        // Uji validasi: set umur negatif pada m3
        m3.setUmur(-10);
        System.out.println(m3.getInfo());
    }
}

```

## 📤 Output Program

```diff
[Default Constructor] Objek MakhlukHidup dibuat.
+ Nama=Kucing, Jenis=Unknown, Umur=0, Berat=0.0

[Parameterized Constructor] Objek MakhlukHidup dibuat dengan parameter.
+ Nama=Harimau, Jenis=Hewan, Umur=3, Berat=120.0

[Copy Constructor] Objek MakhlukHidup disalin dari objek lain.
+ Nama=Harimau, Jenis=Hewan, Umur=3, Berat=120.0

+ Nama=Kuda, Jenis=Hewan, Umur=3, Berat=120.0

- Umur tidak boleh negatif. Diset ke 0.
+ Nama=Harimau, Jenis=Hewan, Umur=0, Berat=120.0
```


