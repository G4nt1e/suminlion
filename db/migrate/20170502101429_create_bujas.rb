class CreateBujas < ActiveRecord::Migration
  def change
    create_table :bujas do |t|
    
    t.string "title"
    t.string "price"
    t.text "content"

    
      t.timestamps null: true
    end
  end
end
