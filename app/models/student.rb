class Student < ActiveRecord::Base
	has_many :stories
	has_many :grades
	belongs_to :teacher
end
