class ChangeDisciplineScoreColumnTypeToInteger < ActiveRecord::Migration[7.0]
  def change
    case ApplicationRecord.connection.adapter_name.downcase.to_sym
    when :postgresql
      change_column :kkp_guidances, :discipline_score, "INTEGER USING discipline_score::integer"
    else
      change_column :kkp_guidances, :discipline_score, :integer
    end
  end
end
