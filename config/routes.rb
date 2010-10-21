School::Application.routes.draw do
  resources :clazzes, :shallow => true do
    resources :attendances
  end
  resources :students, :teachers
end
