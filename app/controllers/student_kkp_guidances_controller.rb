class StudentKkpGuidancesController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_mahasiswa!

  def edit
    if current_user.kkp_registration.nil?
      return redirect_to new_kkp_registration_path
    end

    @kkp_guidance = current_user.kkp_guidance.decorate
  end

  def update
    @kkp_guidance = current_user.kkp_guidance.decorate
    if @kkp_guidance.update(update_params)
      redirect_to({action: :edit}, info: "Berhasil mengirimkan pembaruan")
    end
  rescue 
    head :unprocessable_entity
  end

  private def update_params
    params.require(:kkp_guidance).permit(:report_file, :score_file)
  end
end
