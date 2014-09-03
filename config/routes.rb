Rails.application.routes.draw do

match('sections', {via => :get, :to => 'sections#index'})

match('lessons', {:via => :get, :to => 'lessons#toc'})
# match('lessons/new', {:via => :to => 'lessons#new'})

end
