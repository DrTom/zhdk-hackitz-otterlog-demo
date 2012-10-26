HackitzOtterlog::Application.routes.draw do

  match "otterlogs/" => "otterlogs#index" , via: 'get'
  match "otterlogs/:id" => "otterlogs#get" , via: 'get'
  match "otterlogs/:id" => "otterlogs#put" , via: 'put'

  match '*path' => "main#index"

  root to: 'main#index'
  
end
