class CreateKkpGuidances < ActiveRecord::Migration[7.0]
  def change
    create_table :kkp_guidances do |t|
      t.references :kkp_registration, null: false, foreign_key: true
      t.integer :presentation_score
      t.integer :material_score
      t.integer :material_mastery_score
      t.integer :language_score
      t.integer :writing_style_score
      t.integer :innovation_score
      t.integer :teamwork_score
      t.string :discipline_score

      t.timestamps
    end
  end
end
