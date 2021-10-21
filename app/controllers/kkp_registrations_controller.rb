class KkpRegistrationsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_kkp_registration_member_action,
    only: [:approval, :approve, :rejection, :reject]

  def index
    @kkp_registrations = KkpRegistration.all.decorate
  end

  def show
    @kkp_registration = KkpRegistration.find(params[:id]).decorate
  end

  def approval
    @kkp_registration = @kkp_registration.decorate
  end

  def approve
    param = params.require(:kkp_registration).permit(:official_memo)
    if @kkp_registration.update(status: :approved, **param)
      redirect_to @kkp_registration, info: "kkp disetujui"
    else
      redirect_to @kkp_registration, info: "Proses penerimaan kkp gagal"
    end
  end

  def rejection
    @kkp_registration = @kkp_registration.decorate
  end

  def reject
    param = params.require(:kkp_registration).permit(:revision_message)
    if @kkp_registration.update(status: :rejected, **param)
      redirect_to @kkp_registration, info: "kkp ditolak"
    else
      redirect_to @kkp_registration, danger: "Proses penolakan kkp gagal"
    end
  end

  def destroy
    @kkp_registration = KkpRegistration.find(params[:id])
    if @kkp_registration.destroy
      redirect_to({action: :index}, info: "Berkas pendaftaran kkp dihapus")
    end
  end

  # TODO: refactor it to kkp_registration as resource for creation and show status
  # TODO: move new to edit when current_user has kkp_registration
  def new
    @kkp_registration = if current_user.kkp_registration.nil?
      KkpRegistration.new
    else
      current_user.kkp_registration.decorate
    end
  end

  def edit
    head :method_not_allowed
  end

  # create new essay proposal data
  def create
    @kkp_registration = current_user.build_kkp_registration(kkp_registration_params)

    if @kkp_registration.save
      redirect_to({action: :new}, success: "Pendaftaran kkp berhasil")
    else
      redirect_to({action: :new}, success: "Pendaftaran kkp gagal")
    end
  end

  def update
    @kkp_registration = current_user.kkp_registration

    # TODO: how to render error and retain file field
    # TODO: refactor views using turbo frame tag
    if @kkp_registration.update(kkp_registration_params)
      redirect_to({action: :new}, success: "Berhasil memperbarui data")
    else
      redirect_to({action: :new}, danger: "Gagal memperbarui data")
    end
  end

  private def set_kkp_registration_member_action
    @kkp_registration = KkpRegistration.find(params[:kkp_registration_id])
  end

  private def kkp_registration_params
    @kkp_registration_params ||= params.require(:kkp_registration).permit(
      :entity_name,
      :khs_semester_6,
      :krs_semester_7,
      :registration_form_file,
      :payment_proof_file,
      :academic_transcript_file
    )
  end
end
