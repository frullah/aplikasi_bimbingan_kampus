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

```bash
# menginstall database
RAILS_ENV=production bin/rails db:migrate

# mengompile assets
RAILS_ENV=production bin/rails assets:precompile

# pembuatan data awal
RAILS_ENV=production bin/rails db:seed
```

## Sistem Operasi yang telah dites

- Arch Linux

## Deployment ke Heroku

```bash
git push heroku main:master
```

## Pertanyaan

ask question to [iyashiro47@gmail.com](mailto:iyashiro47@gmail.com)
