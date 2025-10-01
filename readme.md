# 📘 Tugas Kuliah: Konstruktor & Copy Constructor

## 🎯 Tujuan
- Mahasiswa memahami **konsep konstruktor** (default, parameterized, copy).
- Mahasiswa dapat membuat class sederhana dengan **atribut** dan **method**.
- Mahasiswa dapat menguji penggunaan konstruktor melalui program utama.

---

## 📌 Penjelasan
1. **Default Constructor**  
   Konstruktor tanpa parameter yang memberi nilai bawaan saat objek dibuat.

2. **Parameterized Constructor**  
   Konstruktor dengan parameter untuk menginisialisasi atribut secara langsung.

3. **Copy Constructor**  
   Konstruktor yang membuat objek baru dengan menyalin data dari objek lain (idiom Java).

4. **Method**  
   Memberikan perilaku umum pada objek (misalnya `makan()`, `bergerak()`).

5. **toString()**  
   Memudahkan menampilkan isi objek dalam bentuk string.

---

## 💻 Implementasi

### 1) File `MakhlukHidup.java`
```java
public class MakhlukHidup {
    // Atribut
    private String nama;
    private String jenis;
    private int umur;

    // 1. Default Constructor
    public MakhlukHidup() {
        this.nama = "Unknown";
        this.jenis = "Unknown";
        this.umur = 0;
        System.out.println("[Default Constructor] Objek MakhlukHidup dibuat.");
    }

    // 2. Parameterized Constructor
    public MakhlukHidup(String nama, String jenis, int umur) {
        this.nama = nama;
        this.jenis = jenis;
        this.umur = umur;
        System.out.println("[Parameterized Constructor] Objek MakhlukHidup dibuat.");
    }

    // 3. Copy Constructor
    public MakhlukHidup(MakhlukHidup other) {
        this.nama = other.nama;
        this.jenis = other.jenis;
        this.umur = other.umur;
        System.out.println("[Copy Constructor] Objek MakhlukHidup disalin.");
    }

    // Method
    public void makan() {
        System.out.println(nama + " sedang makan.");
    }

    public void bergerak() {
        System.out.println(nama + " sedang bergerak.");
    }

    @Override
    public String toString() {
        return "MakhlukHidup {nama='" + nama + "', jenis='" + jenis + "', umur=" + umur + "}";
    }
}