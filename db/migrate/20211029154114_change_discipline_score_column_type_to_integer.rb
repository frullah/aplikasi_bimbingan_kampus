class ChangeDisciplineScoreColumnTypeToInteger < ActiveRecord::Migration[7.0]
  def change
    change_column :kkp_guidances, :discipline_score, :integer
  end
end
