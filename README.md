# 📦 Bricks Flutter Starter Kit

Kumpulan **Mason Brick** untuk mempercepat pembuatan boilerplate Flutter dengan pola Clean Architecture untuk Kaesa Flutter Stater Kit.

---

## 🛠️ Prasyarat

### 1. Install & Atur Flutter dengan FVM

Gunakan [FVM](https://fvm.app/) untuk mengelola beberapa versi Flutter.

**Cek versi Flutter yang sudah di-cache:**

```bash
fvm list
```

Contoh output:

```
Cache directory:  C:\Users\<username>\fvm\versions
Directory Size: 5.85 GB

┌─────────┬─────────┬─────────────────┬──────────────┬──────────────┬────────┬───────┐
│ Version │ Channel │ Flutter Version │ Dart Version │ Release Date │ Global │ Local │
├─────────┼─────────┼─────────────────┼──────────────┼──────────────┼────────┼───────┤
│ stable  │ stable  │ 3.29.0 → 3.35.1 │ 3.7.0        │ Feb 12, 2025 │ ●      │       │
│ 3.32.5  │ stable  │ 3.32.5          │ 3.8.1        │ Jun 25, 2025 │        │ ●     │
└─────────┴─────────┴─────────────────┴──────────────┴──────────────┴────────┴───────┘
```

**Set salah satu versi sebagai global:**

```bash
fvm global stable
```

**Tambahkan path Flutter global ke Environment Variables (Windows):**

```
C:\Users\<username>\fvm\versions\<flutter_version>\bin
```

> ⚠️ Setelah menambahkan path, **restart terminal/bash/PowerShell** supaya perubahan terbaca.

**Cek versi Flutter & Dart:**

```bash
fvm flutter doctor
flutter --version
dart --version
```

Pastikan hasil dari `fvm flutter doctor` dan `flutter --version` sama → artinya environment sudah sinkron.

---

### 2. Install Mason

Jika Flutter & Dart sudah siap, install Mason secara global:

```bash
dart pub global activate mason_cli
```

Cek instalasi:

```bash
mason --version
```

---

Jika anda menggunakan fvm tapi tidak ingin mengatur Windows Env mungkin anda bisa langsung menjalakan dengan perintah:

```bash
fvm dart pub global run mason_cli:mason
```

Atau anda bisa membuat alias git pada `~\.bash_profile`

```bash
alias fmason="fvm dart pub global run mason_cli:mason"
```

Dan anda bisa menjalankannya seperti berikut:

```bash
fmason --version
```

Perintah diatas dengan `mason --version`.

## ⚙️ Setup Mason di Project

Jika **belum ada `mason.yaml`** di project:

```bash
mason init
```

Jika sudah ada `mason.yaml`:

```bash
mason get
```

---

## 🧱 Bricks yang Tersedia

### 1. Model

Install:

```bash
mason add model --git-url https://github.com/lyrihkaesa/bricks_flutter_starter_kit.git --git-path bricks/model
```

Generate file:

```bash
mason make model
```

Development lokal:

```bash
mason add model --path=bricks/model
```

---

### 2. Entity

Install:

```bash
mason add entity --git-url https://github.com/lyrihkaesa/bricks_flutter_starter_kit.git --git-path bricks/entity
```

Generate file:

```bash
mason make entity
```

Development lokal:

```bash
mason add entity --path=bricks/entity
```

---

### 3. Remote Data Source

Install:

```bash
mason add remote_data_source --git-url https://github.com/lyrihkaesa/bricks_flutter_starter_kit.git --git-path bricks/remote_data_source
```

Generate file:

```bash
mason make remote_data_source
```

Development lokal:

```bash
mason add remote_data_source --path=bricks/remote_data_source
```

---

### 4. Local Data Source

Install:

```bash
mason add local_data_source --git-url https://github.com/lyrihkaesa/bricks_flutter_starter_kit.git --git-path bricks/local_data_source
```

Generate file:

```bash
mason make local_data_source
```

Development lokal:

```bash
mason add local_data_source --path=bricks/local_data_source
```

---

### 5. Repository

Install:

```bash
mason add repository --git-url https://github.com/lyrihkaesa/bricks_flutter_starter_kit.git --git-path bricks/repository
```

Generate file:

```bash
mason make repository
```

Development lokal:

```bash
mason add repository --path=bricks/repository
```

---

### 5. Usecase

Install:

```bash
mason add usecase --git-url https://github.com/lyrihkaesa/bricks_flutter_starter_kit.git --git-path bricks/usecase
```

Generate file:

```bash
mason make usecase
```

Development lokal:

```bash
mason add usecase --path=bricks/usecase
```

---

## 🚧 Development

Buat brick baru:

```bash
mason new <brick_name> --output-dir=bricks
```

Contoh:

```bash
mason new repository --output-dir=bricks
```

Uji brick lokal:

```bash
mason add repository --path=bricks/repository
mason make repository
```

---

## 📝 Catatan

- Gunakan **`--git-url`** untuk fetch langsung dari GitHub (CI/CD friendly).
- Gunakan **`--path`** saat development lokal (iterasi cepat tanpa commit).
- Jangan lupa jalankan:

  ```bash
  mason get
  ```

  setelah menambahkan brick baru.
