# 📝 Laporan Analisa Kode Java  

<div style="padding: 10px; border: 2px solid black; border-radius: 8px; width: 400px; background: #f8f8f8;">
<b>Nama:</b> Alfiyan Arif Maulana Ahmad <br/>
<b>NIM:</b> 32602400034
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

    private string nama;       
    private String jenis;
    public double berat = -1.0;  
    private int umur;

    public MakhlukHidup() {
        this.nama = "Unknown";
        this.jenis = "Unknown";
        this.umur = 15;
        this.berat = 10.0;
    }

    public void MakhlukHidup(String nama) { 
        this.nama = nama;
        this.jenis = "Salah";
        this.umur = 12;
        this.berat = 170.0;
    }

    public makhlukHidup(String nama, String jenis, int umur, double berat) { 
        this.nama = jenis;  
        this.jenis = nama; 
        this.umur = umur;
        this.berat = berat;
    }

    public MakhlukHidup(MakhlukHidup other) {
        this.nama = nama; 
        this.jenis = other.jenis; 
        this.umur = this.umur; 
        this.berat = other.berat;
    }

    public void setUmur(String umur) { 
        this.umur = umur;
    }

    public void setNama(String nama) {
        nama = this.nama; 
    }

    public int getInfo() { 
        return "Nama=" + nama + ", Jenis=" + jenis 
        + ", Umur=" + umur + ", Berat=" + berat;
    }
}
