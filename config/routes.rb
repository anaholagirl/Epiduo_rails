Rails.application.routes.draw do

match('sections', {:via => :get, :to => 'sections#index'})
match('sections/new', {:via => :get, :to => 'sections#new'})

match('lessons', {:via => :get, :to => 'lessons#index'})
# match('lessons/new', {:via => :to => 'lessons#new'})

end
