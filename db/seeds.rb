# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# 建立 student 资料

student_name = ["zh", "ccy", "pjl","gwx","hxw"]

student_name.each do |n|
    Student.create!(name: n)
end
puts "学生已建完"

# 建立 teacher 资料

teacher_name = ["lzy", "lxl", "xzf","tbh","lx"]

teacher_name.each do |n|
    Teacher.create!(name: n)
end
puts "老师已建完"

# 建立 course 资料

course_name = ["math", "Chinese", "english","physics","history"]

course_name.each_with_index do |n,i|
    Course.create!(name: n, teacher_id: i+1)
  
end
puts "课程已建完"

# 假设每个学生选择三门课,由于课程和老师有对应关系，课程选定，老师也就选定了

Student.all.each do |student|
	id = [1,2,3,4,5].sample         # 初始化一个随机id
	
	3.times do 

		until !student.courses.include?(Course.find(id))  #检查是否已选了该课程
		id = Course.ids.sample
        end

		student.courses << Course.find(id)
		student.teachers << Teacher.find(id)
		#Teacher.find(id).students << student, 不需要写这句，因为它们是多对多，写一边就行
	end
end
puts "学生选课，确定自己的老师完毕,同时老师拥有了自己的学生"







