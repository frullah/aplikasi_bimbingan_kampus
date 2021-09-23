class CreateEssayProposals < ActiveRecord::Migration[7.0]
  def change
    create_table :essay_proposals do |t|
      t.references :user, null: false, foreign_key: true
      t.string :email
      t.string :phone_number
      t.string :proposal_title

      t.timestamps
    end
  end
end
