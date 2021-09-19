module MahasiswaMenuPresenter
  def self.cache_key
    "menus:mahasiswa"
  end

  def self.menus
    [
      {href: "/", text: "Mahasiswa"},
      {href: "/", text: "Beranda"},
      {
        id: "menu-kkp", 
        title: "Pendaftaran KKP",
        items: [
          {href: "#", text: "Daftar KKP"},
          {href: "#status_nota_dinas_kkp", text: "Status Nota Dinas KKP" },
          {href: "#bimbingan_kkp&nim=#{@current_user&.id_number}", text: "Bimbingan KKP" },
        ]
      },
      {
        id: "menu-skripsi", 
        title: "Pendaftaran Skripsi", 
        items: [
          {href: "#daftar_skripsi", text: "Daftar SKRIPSI" },
          {href: "#status_nota_dinas_skripsi", text: "Status Nota Dinas SKRIPSI" },
        ]
      },
      {href: "about", text: "About"}
    ]
  end
end
