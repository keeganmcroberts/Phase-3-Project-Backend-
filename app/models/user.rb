class User < ActiveRecord::Base
    has_many :expenses 
    has_many :categories, through: :expenses 
end