class Category < ActiveRecord::Base
    has_many :expenses 
    has_many :users, through: :expenses 


    
end