class Teacher < ApplicationRecord
	has_many :courses

	has_many :student_teacher_relationships
	has_many :students, through: :student_teacher_relationships, source: :student
end
