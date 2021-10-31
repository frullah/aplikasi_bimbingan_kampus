# Aplikasi Bimbingan Kampus

## Requirements

- Ruby 3.0.1
- NodeJS >= 16.12.0
- yarn package manager 
- jika anda ingin menggunakan database SQLite, anda membutuhkan library [SQLite](https://www.sqlite.org) 
- jika anda ingin menggunakan database PostgreSQL, anda membutuhkan library [Ruby MySQL2]

## Cara mennginstall Yarn package manager

1. pastikan NodeJS sudah terinstall
2. jalankan perintah `npm install -g yarn` pada command line


## Cara menginstall project ini

copy file `.env.example` ke `.env.production.local`,

sesuaikan environment variable,

beberapa environment variable yang wajib disesuaikan

- `DATABASE_URL`: URL koneksi database.

  - contoh `DATABASE_URL` PostgreSQL: postgres://`USER`:`PASSWORD`@`localhost`/`NAMA_DATABASE`

  - contoh `DATABASE_URL` MySQL: mysql2://`USER`:`PASSWORD`@`localhost`/`NAMA_DATABASE`

  - jika user tidak memiliki password, hapus `PASSWORD`.
    
    contoh untuk MySQL: mysql2://`USER`@`localhost`/`NAMA_DATABASE`

    contoh untuk PostgreSQL: postgres://`USER`@`localhost`/`NAMA_DATABASE`

   [Dokumentasi `DATABASE_URL` lebih lanjut](https://blog.arkency.com/database-url-examples-for-rails-db-connection-strings/)

```bash
# mengompile assets
RAILS_ENV=production bin/rails assets:precompile

# pemasangan database
RAILS_ENV=production bin/rails db:create db:setup db:migrate db:seed
```

## Akun Administrator Bawaan

- username: admin
- password: changeme123

## Sistem Operasi yang telah dites

- Arch Linux

## Deployment ke Heroku

```bash
git push heroku main:master
```

## Contoh Aplikasi yang di-deploy di Heroku

aplikasi-bimbingan-kampus.herokuapp.com
