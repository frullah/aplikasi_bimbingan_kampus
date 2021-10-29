class AddPassAsStatusToKkpGuidance < ActiveRecord::Migration[7.0]
  def change
    add_column :kkp_guidances, :pass, :boolean, default: false
  end
end
