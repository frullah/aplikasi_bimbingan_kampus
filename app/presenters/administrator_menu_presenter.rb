
module AdministratorMenuPresenter
  def self.cache_key
    "menus:administrator1"
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
      {href: "about", text: "About"}
    ]
  end
end