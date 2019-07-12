class AddDeletedAtToArticles < ActiveRecord::Migration[5.2]
  def change
    add_column :articles, :deleted_at, :datetime
    add_index :articles, :deleted_at
  end
end

# bin/rails generate migration AddDeletedAtToArticles deleted_at:datetime:index
