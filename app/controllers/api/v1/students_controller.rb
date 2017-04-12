class Api::V1::StudentsController < ApiController

	def show
        @student = Student.find(params[:id])

        render :json => {
        	:student_name => @student.name,   # 每一行逗号不可省略

            :course_info => @student.courses.map { |course|
            	
           { 		                             # 当内部是一个数组资料时，用map
           	:course_name => course.name,          # map下内容部分也要用{}包起来
           	:teancher_name => Teacher.find(course.teacher_id).name
            }
          }
        }
	end
end
