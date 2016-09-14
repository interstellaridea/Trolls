Rails.application.routes.draw do
  root :to => "sessions#connect"
	get 'welcome/index'

  get 'session/:action', :to => 'sessions'
end