class StudentKkpGuidancesController < ApplicationController
  def edit
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
