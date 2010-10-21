School::Application.routes.draw do
  resources :clazzes, :students, :teachers
end
