class AddUserToKkpRegistration < ActiveRecord::Migration[7.0]
  def change
    add_reference :kkp_registrations, :user, foreign_key: true
  end
end
