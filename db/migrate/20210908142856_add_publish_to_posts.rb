class AddPublishToPosts < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :publish, :boolean
  end
end
