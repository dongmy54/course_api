class Course < ApplicationRecord

	has_many :student_course_relationships
	has_many :students, through: :student_course_relationships, source: :student
end
