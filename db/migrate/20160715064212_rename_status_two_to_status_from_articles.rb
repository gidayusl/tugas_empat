class RenameStatusTwoToStatusFromArticles < ActiveRecord::Migration[5.0]
  def change
    rename_column :articles, :status_two, :status
  end
end
