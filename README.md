# Bricks Flutter Starter Kit

- Jika tidak ada `mason.yaml` jalankan perintah dibawah ini:

```bash
mason init
```

- Jika sudah ada `mason.yaml` jalankan perintah dibawah ini:

```bash
mason get
```

## Model

```bash
mason add model --git-url https://github.com/lyrihkaesa/bricks_flutter_starter_kit.git --git-path bricks/model
```

```bash
mason make model
```

- Untuk development:

```bash
mason add model --path=bricks/model
```

## Entity

```bash
mason add entity --git-url https://github.com/lyrihkaesa/bricks_flutter_starter_kit.git --git-path bricks/entity
```

```bash
mason make entity
```

- Untuk development:

```bash
mason add entity --path=bricks/entity
```

## Remote Data Source

```bash
mason add remote_data_source --git-url https://github.com/lyrihkaesa/bricks_flutter_starter_kit.git --git-path bricks/remote_data_source
```

```bash
mason make remote_data_source
```

- Untuk development:

```bash
mason add remote_data_source --path=bricks/remote_data_source
```

## Local Data Source

```bash
mason add local_data_source --git-url https://github.com/lyrihkaesa/bricks_flutter_starter_kit.git --git-path bricks/local_data_source
```

```bash
mason make local_data_source
```

- Untuk development:

```bash
mason add local_data_source --path=bricks/local_data_source
```

## Repository

```bash
mason add repository --git-url https://github.com/lyrihkaesa/bricks_flutter_starter_kit.git --git-path bricks/repository
```

```bash
mason make repository
```

- Untuk development:

```bash
mason add repository --path=bricks/repository
```

---

## Development

Untuk membuat brick baru:

```bash
mason new repository --output-dir=bricks
```

Menguji `mason make` diatas, tambahkan dulu ke `mason.yaml`

```bash
mason add repository --path=bricks/repository
```
