class EssayProposalsController < ApplicationController
  before_action :authenticate_user!

  def new
    @model = if current_user.essay_proposal.nil?
      EssayProposal.new
    else
      current_user.essay_proposal.decorate
    end
  end

  # TODO: move new to edit when current_user has essay_proposal

  def create
    @model = current_user.build_essay_proposal(essay_proposal_params)

    if @model.save
      redirect_to({action: :new}, success: "Pendaftaran skripsi berhasil")
    else
      redirect_to({action: :new}, success: "Pendaftaran skripsi gagal")
    end
  end

  def update
    @model = current_user.essay_proposal

    # TODO: how to render error and retain file field
    if @model.update(essay_proposal_params)
      redirect_to({action: :new}, success: "Berhasil memperbarui data")
    else
      redirect_to({action: :new}, danger: "Gagal memperbarui data")
    end
  end

  private def essay_proposal_params
    @essay_proposal_params ||= params.require(:essay_proposal).permit(
      :title,
      :outline_file,
      :form_file,
      :kkp_report_submission_proof_file,
      :current_krs_file,
      :payment_proof_file,
      :academic_transcript_file
    )
  end
end
