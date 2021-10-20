require "rails_helper"

RSpec.describe "EssayProposals", type: :system do
  before do
    driven_by(:rack_test)
  end

  context "registration with valid data" do
    it "show success message" do
      sign_in create(:user)
      visit new_essay_proposals_path
      fill_in "Judul proposal", with: "Test"
      attach_file "Berkas outline proposal", dummy_filepath
      attach_file "Berkas formulir skripsi", dummy_filepath
      attach_file "Bukti pengiriman laporan KKP", dummy_filepath
      attach_file "Berkas KRS", dummy_filepath
      attach_file "Berkas bukti pembayaran", dummy_filepath
      attach_file "Berkas transkrip nilai", dummy_filepath
      click_button "Mendaftar"

      expect(page).to have_content("Pendaftaran skripsi berhasil")
    end
  end

  def dummy_filepath
    Rails.root.join("spec/fixtures/dummy.pdf")
  end
end
