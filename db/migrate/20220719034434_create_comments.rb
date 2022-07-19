class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :comment_to_post
      t.belongs_to :posts
      t.belongs_to :users
      t.timestamps
    end
  end
end
