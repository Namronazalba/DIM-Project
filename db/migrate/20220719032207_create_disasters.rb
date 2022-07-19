class CreateDisasters < ActiveRecord::Migration[6.1]
  def change
    create_table :disasters do |t|
      t.string :disaster_type
      t.belongs_to :post
      t.timestamps
    end
  end
end
