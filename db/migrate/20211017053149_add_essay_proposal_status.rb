class AddEssayProposalStatus < ActiveRecord::Migration[7.0]
  def change
    add_column :essay_proposals, :status, :integer, null: false, limit: 1
  end
end
