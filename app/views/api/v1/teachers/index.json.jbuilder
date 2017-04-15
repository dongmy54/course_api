json.teacher_info do
   json.array! @teachers do |teacher|
    json.teacher_name teacher.name
    json.course_info do
    json.array! teacher.courses do |course|
      json.course_name course.name
    end
    end 
   end
end