class KkpGuidancesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_kkp_guidance_member_action,
    only: [:approval, :approve, :rejection, :reject]

  def index
    @kkp_guidances = KkpGuidance.all.decorate
  end

  def show
    @kkp_guidance = KkpGuidance.find(params[:id]).decorate
  end

  def approval
    @kkp_guidance = @kkp_guidance.decorate
  end

  def approve
    param = params.require(:kkp_guidance).permit(:official_memo)
    if @kkp_guidance.update(status: :approved, **param)
      redirect_to @kkp_guidance, info: "kkp disetujui"
    else
      redirect_to @kkp_guidance, info: "Proses penerimaan kkp gagal"
    end
  end

  def rejection
    @kkp_guidance = @kkp_guidance.decorate
  end

  def reject
    param = params.require(:kkp_guidance).permit(:revision_message)
    if @kkp_guidance.update(status: :rejected, **param)
      redirect_to @kkp_guidance, info: "kkp ditolak"
    else
      redirect_to @kkp_guidance, danger: "Proses penolakan kkp gagal"
    end
  end

  # TODO: refactor it to kkp_guidance as resource for creation and show status
  # TODO: move new to edit when current_user has kkp_guidance
  def new
    @kkp_guidance = if current_user.kkp_guidance.nil?
      KkpGuidance.new
    else
      current_user.kkp_guidance
    end.decorate
  end

  def edit
    head :method_not_allowed
  end

  # create new essay proposal data
  def create
    @kkp_guidance = current_user.build_kkp_guidance(kkp_guidance_params)

    if @kkp_guidance.save
      redirect_to({action: :new}, success: "Bimbingan KKP berhasil")
    else
      redirect_to({action: :new}, success: "Bimbingan KKP gagal")
    end
  end

  def update
    @kkp_guidance = current_user.kkp_guidance

    # TODO: how to render error and retain file field
    # TODO: refactor views using turbo frame tag
    if @kkp_guidance.update(kkp_guidance_params)
      redirect_to({action: :new}, success: "Berhasil memperbarui data")
    else
      redirect_to({action: :new}, danger: "Gagal memperbarui data")
    end
  end

  private def set_kkp_guidance_member_action
    @kkp_guidance = KkpGuidance.find(params[:kkp_guidance_id])
  end

  private def kkp_guidance_params
    @kkp_guidance_params ||= params.require(:kkp_guidance).permit(
      :khs_semester_6,
      :krs_semester_7,
      :registration_form_file,
      :payment_proof_file,
      :academic_transcript_file,
      :entity_name,
      :kkp_type,
      :entity_type,
    )
  end
end
