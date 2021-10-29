module MahasiswaMenuPresenter
  class << self
    include Rails.application.routes.url_helpers
  end

  # def self.cache_key
  #   "v6/menus:mahasiswa"
  # end

  def self.menus
    [
      {href: "/", text: "Mahasiswa"},
      {href: "/", text: "Beranda"},
      {
        id: "menu-kkp",
        title: "Pendaftaran KKP",
        items: [
          {href: new_kkp_registration_path, text: "Daftar KKP"},
          {href: edit_student_kkp_guidances_path, text: "Bimbingan KKP"}
        ]
      },
      {
        id: "menu-skripsi",
        title: "Pendaftaran Skripsi",
        items: [
          {href: new_essay_proposal_path, text: "Daftar SKRIPSI"},
        ]
      },
      {href: about_path, text: "About"}
    ]
  end
end
