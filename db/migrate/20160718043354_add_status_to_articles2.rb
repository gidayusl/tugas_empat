class AddStatusToArticles2 < ActiveRecord::Migration[5.0]
  def change
    add_column :articles, :status, :string
  end
end
