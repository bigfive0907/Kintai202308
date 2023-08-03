Rails.application.routes.draw do
  root "home#top"
  
  get 'statistics/index'
  get 'manager/index'
#従業員画面記録処理
  get 'work_s' => 'record#workStart'
  post 'work_s' => 'record#workStart'
  get 'work_e' => 'record#workEnd'
  post 'work_e' => 'record#workEnd'
  get 'idle_s' => 'record#idleStart'
  post 'idle_s' => 'record#idleStart'
  get 'idle_e' => 'record#idleEnd'
  post 'idle_e' => 'record#idleEnd'
  get 'over_s' => 'record#overStart'
  post 'over_s' => 'record#overStart'
  get 'over_e' => 'record#overEnd'
  post 'over_e' => 'record#overEnd'
#statistic
  get 'stats_new' => 'statistics#new'
  post 'stats_new' => 'statistics#new'
  get 'stats_work' => 'statistics#editWork'
  post 'stats_work' => 'statistics#editWork'
  get 'stats_idle' => 'statistics#editIdle'
  post 'stats_idle' => 'statistics#editIdle'
  get 'stats_over' => 'statistics#editOver'
  post 'stats_over' => 'statistics#editOver'
  post "statistics/:id" => "statistics#show"
  get "statistics/:id" => "statistics#show"
  post "statistics/:id/:year/:month" => "statistics#show"
  get "statistics/:id/:year/:month" => "statistics#show"
  post "statistics/:id/:year" => "statistics#show"
  get "statistics/:id/:year" => "statistics#show"
  post "dateSearch" => "statistics#dateSearch"
  get "dateSearch" => "statistics#dateSearch"
#user
  post "users/:id/update" => "users#update"
  get "users/:id/edit" => "users#edit"
  get "users/new" => "users#new"
  post "users/create" => "users#create"
  get "signup" => "users#signup"
  get "users/index" => "usesr#index"
  get "show" => "users#show"
  post "login" => "users#login"
  post "logout" => "users#logout"
  get "logout" => "users#logout"
  get "login" => "users#login_form"
  get "employee" => "users#employee"
  
#manager
  get "manager/new" => "manager#new"
  post "manager/create" => "manager#create"
  post "login_manager" => "manager#login_manager"
  get "login_manager" => "manager#login_manager_form"
  get "manager" => "manager#manager"
  post "manager/:id/update" => "manager#update"
  get "manager/:id/edit" => "manager#edit"
  get "manager/show" => "manager#show"

  get '/' => 'home#top'
  
end
