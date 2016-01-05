class Story < ActiveRecord::Base
	belongs_to :teachers
	has_many :grades
	has_many :students, through: :grades
	has_many :phrases
end
