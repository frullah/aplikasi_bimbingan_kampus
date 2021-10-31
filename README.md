# Aplikasi Bimbingan Kampus

## Requirements

- Ruby 3.0.1
- NodeJS >= 16.13.0
- yarn package manager 
- salah satu database server, diantaranya [MariaDB/MySQL](https://mariadb.org/download/), [PostgreSQL](https://www.postgresql.org/), atau [SQLite](https://www.sqlite.org/)

## Cara mennginstall Yarn package manager

1. pastikan NodeJS sudah terinstall
2. jalankan perintah `npm install -g yarn` pada command line

## Cara menginstall project ini

install dependensi

```bash
# install dependensi Ruby dan Rails 
bundle install

# install dependensi NodeJS
yarn install
```

lalu copy file `.env.example` ke `.env.production.local`,

sesuaikan environment variable,

beberapa environment variable yang wajib disesuaikan

- `DATABASE_URL`: URL koneksi database.

  - contoh `DATABASE_URL` PostgreSQL: postgres://`USER`:`PASSWORD`@`localhost`/`NAMA_DATABASE`

  - contoh `DATABASE_URL` MySQL: mysql2://`USER`:`PASSWORD`@`localhost`/`NAMA_DATABASE`

  - jika user tidak memiliki password, hapus `PASSWORD`.
    
    contoh untuk MySQL: mysql2://`USER`@`localhost`/`NAMA_DATABASE`

    contoh untuk PostgreSQL: postgres://`USER`@`localhost`/`NAMA_DATABASE`

   [Dokumentasi `DATABASE_URL` lebih lanjut](https://blog.arkency.com/database-url-examples-for-rails-db-connection-strings/)

lalu jalankan perintah di bawah ini

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
