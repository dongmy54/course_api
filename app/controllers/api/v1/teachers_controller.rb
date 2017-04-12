class Api::V1::TeachersController < ApiController

	def index
		@teachers = Teacher.all

		render :json => {
			:teacher_info => @teachers.map { |teacher|
            {
            	:teacher_name => teacher.name,
                :courese_info => teacher.courses.map { |course|
                  {
                  	:course_name => course.name
                  }
                  }

			  }
            }
		}
	end
end
