Rails.application.routes.draw do
 
namespace :api, :defaults => { :format => :json } do
    namespace :v1 do
   
      get "/students/:id" => "students#show", :as => :student
      get "/teachers" => "teachers#index", :as => :teachers
      delete "/teachers/:id" => "teachers#destroy", :as => :destroy_teacher
   
    end
  end

end
