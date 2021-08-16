ActiveAdmin.register User do
  ActiveAdmin.register User do
    index do
      column :email
      column :username
      column :avatar
      column :admin
      column :friend_count
      column :tweets_count
      column :likes_given
      column :retweets_given
      column :created_at
      actions
    end
  end
end
    
  