class EssayProposalsController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_mahasiswa!
  before_action :set_essay_proposal, only: [:approval, :approve, :rejection, :reject]

  def index
    @essay_proposals = EssayProposal.all.decorate
  end

  def show
    @essay_proposal = EssayProposal.find(params[:id]).decorate
  end

  def edit
    head :method_not_allowed
  end

  def approval
    @essay_proposal = @essay_proposal.decorate
  end

  def approve
    param = params.require(:essay_proposal).permit(:official_memo)
    if @essay_proposal.update(status: :approved, **param)
      redirect_to @essay_proposal, info: "Proposal skripsi diterima"
    else
      redirect_to @essay_proposal, info: "Proses penerimaan proposal skripsi gagal"
    end
  end

  def rejection
    @essay_proposal = @essay_proposal.decorate
  end

  def reject
    param = params.require(:essay_proposal).permit(:revision_message)
    if @essay_proposal.update(status: :rejected, **param)
      redirect_to @essay_proposal, info: "Proposal skripsi ditolak"
    else
      redirect_to @essay_proposal, danger: "Proses penolakan proposal skripsi gagal"
    end
  end

  def destroy
    @essay_proposal = EssayProposal.find(params[:id])
    if @essay_proposal.destroy
      redirect_to({action: :index}, info: "Berkas pendaftaran skripsi dihapus")
    end
  end

  # TODO: refactor it to essay_proposal as resource for creation and show status
  # TODO: move new to edit when current_user has essay_proposal
  def new
    @essay_proposal = if current_user.essay_proposal.nil?
      EssayProposal.new
    else
      current_user.essay_proposal.decorate
    end
  end

  # create new essay proposal data
  def create
    @essay_proposal = current_user.build_essay_proposal(essay_proposal_params)

    if @essay_proposal.save
      redirect_to({action: :new}, success: "Pendaftaran skripsi berhasil")
    else
      redirect_to({action: :new}, success: "Pendaftaran skripsi gagal")
    end
  end

  def update
    @essay_proposal = current_user.essay_proposal

    # TODO: how to render error and retain file field
    # TODO: refactor views using turbo frame tag
    if @essay_proposal.update(essay_proposal_params)
      redirect_to({action: :new}, success: "Berhasil memperbarui data")
    else
      redirect_to({action: :new}, danger: "Gagal memperbarui data")
    end
  end

  private def set_essay_proposal
    @essay_proposal = EssayProposal.find(params[:essay_proposal_id])
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
