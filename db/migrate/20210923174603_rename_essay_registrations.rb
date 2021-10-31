class RenameEssayRegistrations < ActiveRecord::Migration[7.0]
  def change
    rename_table :essay_registrations, :essay_proposals

    rename_column :essay_proposals, :proposal_title, :title
  end
end
