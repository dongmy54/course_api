class Student < ApplicationRecord

	has_many :student_teacher_relationships
	has_many :teachers, through: :student_teacher_relationships, source: :teacher
end
