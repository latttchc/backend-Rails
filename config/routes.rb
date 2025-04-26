Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"

  # namespace :v1
  # → URLに /v1 がつくグループを作っている。 → つまり、全て /v1/○○ の形になる。
  # defaults: { format: 'json' }
  # → 返すデータはデフォルトで JSON形式 になる。
  # resources :users
  # → ユーザーのCRUD APIを自動で作成する
  namespace "v1", defaults: { format: "json" } do
    resources :users
  end
end
