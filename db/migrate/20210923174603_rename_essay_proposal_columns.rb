class RenameEssayProposalColumns < ActiveRecord::Migration[7.0]
  def change
    rename_column :essay_proposals, :proposal_title, :title
  end
end
