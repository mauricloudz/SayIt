Rails.application.routes.draw do
  ActiveAdmin.routes(self)
  # get 'users/follow'
  resources :tweets do
    post 'likes', to: 'tweets#likes'
    post 'retweet', to: 'tweets#retweet'
  end
  devise_for :users
  get 'home/index'
  get 'all_tweets', to: 'home#all_tweets', as: 'all_tweets'
  
  post 'follow/:friend_id', to: 'users#follow', as: 'users_follow'
  # get 'api/news' 

  scope '/api' do
    get '/news', to: 'api#news', as: 'api_news'
    get '/:date1/:date2', to: 'api#tweets_by_date', as: 'api_tweets_by_date'
    post '/tweets', to: 'api#create_tweet', as: 'api_create_tweet'
  end
  # Ex:- scope :active, -> {where(:active => true)}

  root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
