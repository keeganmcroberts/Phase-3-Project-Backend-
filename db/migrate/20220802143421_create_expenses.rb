class CreateExpenses < ActiveRecord::Migration[6.1]
  def change
    create_table :expenses do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :date 
      t.float :amount 
    end 
  end
end
