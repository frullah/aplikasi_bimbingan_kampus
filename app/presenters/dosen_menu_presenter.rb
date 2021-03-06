module DosenMenuPresenter
  class << self
    include Rails.application.routes.url_helpers
  end

  # def self.cache_key
  #   "v2/menus/dosen"
  # end

  def self.menus
    [
      {href: "/", text: "Mahasiswa"},
      {href: "/", text: "Beranda"},
      {
        id: "menu-kkp",
        title: "Peserta KKP",
        items: [
          {href: kkp_guidances_path, text: "Bimbingan KKP"},
          {href: "#status_nota_dinas_kkp", text: "Status Nota Dinas KKP"},
          {href: "#bimbingan_kkp&nim=#{@current_user&.id_number}", text: "Bimbingan KKP"}
        ]
      },
      {
        id: "menu-skripsi",
        title: "Peserta Skripsi",
        items: [
          {href: "#daftar_skripsi", text: "Daftar SKRIPSI"},
          {href: "#status_nota_dinas_skripsi", text: "Status Nota Dinas SKRIPSI"}
        ]
      },
      {href: about_path, text: "About"}
    ]
  end
end
