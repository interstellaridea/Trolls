Rails.application.routes.draw do

  root 'welcome#index'
  get 'welcome/show', to: 'welcome#show'
  get 'oauth/connect', to: 'instagram#connect', as: 'insta_connect'
  get 'oauth/instagram/callback/', to: 'instagram#callback'
end