class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|
      t.string :content
      t.belongs_to :posts
      t.belongs_to :users
      t.timestamps
    end
  end
end
