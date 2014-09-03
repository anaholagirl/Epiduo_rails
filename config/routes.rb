Rails.application.routes.draw do

  match('/', {:via => :get, :to => 'sections#index'})
  match('sections', {:via => :get, :to => 'sections#index'})
  match('sections/new', {:via => :get, :to => 'sections#new'})
  match('sections/:id', {:via => :get, :to => 'setions#show'})

  match('lessons', {:via => :get, :to => 'lessons#index'})
  # match('lessons/new', {:via => :get, :to => 'lessons#new'})

end
