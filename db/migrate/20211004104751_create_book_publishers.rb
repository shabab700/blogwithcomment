class CreateBookPublishers < ActiveRecord::Migration[6.1]
   def change
      create_table :book_publishers do |t|
           t.integer :book_id
           t.integer :publisher_id
           t.timestamps
      end
   end
end