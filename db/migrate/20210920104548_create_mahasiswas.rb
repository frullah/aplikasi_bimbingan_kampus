class CreateMahasiswas < ActiveRecord::Migration[7.0]
  def change
    create_table :mahasiswas do |t|

      t.timestamps
    end
  end
end
