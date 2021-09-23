class AddUserInformationColumnsToEssayRegistration < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :phone_number, :string, limit: 16
  end
end
