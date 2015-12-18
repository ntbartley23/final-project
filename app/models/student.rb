class Student < ActiveRecord::Base
	has_many :strories, through: :grades
	has_many :grades
	belongs_to :teacher
end
