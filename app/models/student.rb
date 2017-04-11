class Student < ApplicationRecord

	has_many :student_teacher_relationships
	has_many :teachers, through: :student_teacher_relationships, source: :teacher

	has_many :student_course_relationships
	has_many :courses, through: :student_course_relationships, source: :course
end
