class Api::V1::TeachersController < ApiController

	def index
		@teachers = Teacher.all

		# render :json => {
		# 	:teacher_info => @teachers.map { |teacher|
  #           {
  #           	:teacher_name => teacher.name,
  #               :courese_info => teacher.courses.map { |course|
  #                 {
  #                 	:course_name => course.name
  #                 }
  #                 }

		# 	  }
  #           }
		# }
	end


	def destroy
		@teacher = Teacher.find(params[:id])
        
         @teacher.courses.each do |course|
              @teacher.courses.delete(course)  
         end
        
        #@teacher.courses.destroy   不能这样写
        # 我们需要达到的目的是：让课程中记录的teacher_id为nil

		@teacher.destroy

		render :json => {
			:message => "此老师及其代课信息已全部删除"
		}
	end

end
