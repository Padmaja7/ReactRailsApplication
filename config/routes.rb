Rails.application.routes.draw do
  get 'greetings/hello'
  get 'employees/index'
  get 'employees/show'
  get 'employees/empData/:id', to: 'employees#empData'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
