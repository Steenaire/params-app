Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/query_parameters', to: 'params_examples#query_parameters'
  get '/click_counter', to: 'clicks#click_counter'

end
