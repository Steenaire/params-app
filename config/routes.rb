Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Query parameters examples
  get '/query_parameters', to: 'params_examples#query_parameters'
  get '/click_counter', to: 'clicks#click_counter'

  #url segment parameters examples
  get 'url_segment_parameters/:guess', to: 'params_examples#url_segment_parameters'

  get 'secret_number/*local_number', to: 'params_examples#secret_number'

  #Form parameters examples
  get '/form_display', to:  'params_examples#form_display'
  post '/form_result', to: 'params_examples#form_result'

  get '/add_contact', to: 'params_examples#add_contact'
  post '/display_contact', to: 'params_examples#display_contact'

end
