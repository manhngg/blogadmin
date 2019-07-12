class AddDeletedAtToComments < ActiveRecord::Migration[5.2]
  def change
    add_column :comments, :deleted_at, :datetime
    add_index :comments, :deleted_at
  end
end

# bin/rails generate migration AddDeletedAtToComments deleted_at:datetime:index
