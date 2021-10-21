class CreateKkpRegistrations < ActiveRecord::Migration[7.0]
  def change
    create_table :kkp_registrations do |t|
      t.string :entity_name
      t.boolean :individual
      t.integer :status, default: 0
      t.integer :entity_type, default: 0
      t.string :members

      t.timestamps
    end
  end
end
