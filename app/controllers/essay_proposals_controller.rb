class EssayProposalsController < ApplicationController
  before_action :authenticate_user!

  def new
    @model = EssayProposal.new
  end

  def create
    @model = EssayProposal.new(essay_proposal_params)
    unless @model.valid
      render partial: "form"
    end
  end

  private def essay_proposal_params
    @essay_proposal_params ||= params.require(:essay_proposal).permit(
      :title,
      :outline_file,
      :registration_form_file,
      :kkp_report_submission_proof_file,
      :current_krs_file,
      :payment_proof_file,
      :academic_transcript_file
    )
  end
end
