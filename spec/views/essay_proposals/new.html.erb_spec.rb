require 'rails_helper'

RSpec.describe "essay_proposals/new", type: :view do\
  let(:student) { create(:mahasiswa) }

  before do
    allow(view).to receive(:current_user).and_return(student)
  end

  context "not registered" do
    it "does not show status" do
      render
      assert_select "[aria-label='status']", count: 0
      assert_select "[aria-label='keterangan']", count: 0
    end
    it "can register"
  end

  context "rejected" do
    fit "show status as 'rejected'" do
      essay_proposal = create(:essay_proposal, user: student)
      assign(:model, essay_proposal)
      render
      assert_select "[aria-label='status']", text: "Status: Ditolak"
      assert_select "[aria-label='keterangan']", count: 0
    end
  end

  context "approved" do
    it "can only see data"
  end
end
