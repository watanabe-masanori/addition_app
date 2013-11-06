class Add < ActiveRecord::Base
	validates :num1, presence: true
	validates :num2, presence: true
end
