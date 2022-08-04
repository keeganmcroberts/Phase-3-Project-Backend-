class User < ActiveRecord::Base
    has_many :expenses 
    has_many :categories, through: :expenses 


    # def expense_list
    #     self.expenses
    #   end
end