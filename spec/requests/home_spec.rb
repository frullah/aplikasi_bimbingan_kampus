require 'rails_helper'

RSpec.describe "Home Page", type: :request do
  context "visit as mahasiswa" do
    it "render with mahasiswa templates" do
      user = create(:user, user_type: :mahasiswa)
      allow(MahasiswaMenuPresenter).to receive(:menus).and_return([])
      allow(MahasiswaMenuPresenter).to receive(:cache_key).and_return("key")
      sign_in user
      get root_path
      expect(MahasiswaMenuPresenter).to have_received(:cache_key)
      expect(MahasiswaMenuPresenter).to have_received(:menus)
    end
  end
end
