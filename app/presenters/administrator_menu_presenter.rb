
module AdministratorMenuPresenter
  def self.cache_key
    "v1/menus/administrator"
  end

  def self.menus
    [
      {href: "/", text: "Admin"},
      {href: "/", text: "Beranda"},
      {
        id: "menu-peserta-kkp", 
        title: "Data Peserta KKP",
        items: [
          {href: "#", text: "Berkas Peserta KKP"},
          {href: "#status_nota_dinas_kkp", text: "Nilai Peserta KKP" },
        ]
      },
      {
        id: "menu-skripsi", 
        title: "Data Peserta SKRIPSI",
        items: [
          {href: "#daftar_skripsi", text: "Berkas Peserta SKRIPSI" },
          {href: "#status_nota_dinas_skripsi", text: "Nilai Peserta SKRIPSI" },
        ]
      },
      {href: "about", text: "Data Dosen Pembimbing"},
      {href: "users", text: "Data Pengguna"},
      {href: "about", text: "About"}
    ]
  end
end
