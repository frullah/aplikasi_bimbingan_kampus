class AddKkpTypeToKkpRegistration < ActiveRecord::Migration[7.0]
  def change
    add_column :kkp_registrations, :kkp_type, :integer, null: false, default: 0
  end
end
