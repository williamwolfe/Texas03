class AddColumnNameToEvaluation < ActiveRecord::Migration
  def change
    add_column :evaluations, :overall_comments, :text
  end
end
