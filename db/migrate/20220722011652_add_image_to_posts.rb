class AddImageToPosts < ActiveRecord::Migration[6.1]
  def change
  # rename_column :posts, :title, :title_rename
    add_column :posts, :image , :string
  end
  # def up
  #   rename_column :posts, :title, :title_rename
  # end
  #
  # def down
  #   rename_column :posts, :title_rename, :title
  # end
end
