class CreateComments < ActiveRecord::Migration
    def change
        create_table :comments do |t|
            t.string :author, :null => false
            t.text :body, :null => false
            t.integer :post_id

            t.timestamps
        end
    end
end
