class Story < ActiveRecord::Base
	has_many :students
	has_many :grades through :students
end
