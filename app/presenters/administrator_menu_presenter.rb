module AdministratorMenuPresenter
  class << self
    include Rails.application.routes.url_helpers
  end

  def self.avo
    Avo::Engine.routes.url_helpers
  end

  # def self.cache_key
  #   "v8/menus/administrator"
  # end

  def self.menus
    [
      {href: "/", text: "Admin"},
      {href: "/", text: "Beranda"},
      {
        id: "menu-peserta-kkp",
        title: "Data Peserta KKP",
        items: [
          {href: kkp_registrations_path, text: "Berkas Peserta SKRIPSI"},
          {href: "#status_nota_dinas_kkp", text: "Nilai Peserta KKP"}
        ]
      },
      {
        id: "menu-skripsi",
        title: "Data Peserta SKRIPSI",
        items: [
          {href: essay_proposals_path, text: "Berkas Peserta SKRIPSI"},
          {href: "#status_nota_dinas_skripsi", text: "Nilai Peserta SKRIPSI"}
        ]
      },
      {href: avo.new_resources_dosen_path, text: "Data Dosen Pembinmbing"},
      {href: avo.new_resources_mahasiswa_path, text: "Data Mahasiswa"},
      {href: avo.new_resources_administrator_path, text: "Data Administrator"},
      {href: about_path, text: "About"}
    ]
  end
end
