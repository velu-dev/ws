Rails.application.routes.draw do
get "customer_check" => "processes#customer_check"
get "customer_vehicle_check" => "processes#customer_vehicle_check"

get "inventory" => "spares_inventories#index"
  
get "dashboard" => "processes#dashboard", :as => "dashboard"
get "log_in" => "sessions#new", :as => "log_in"
get "log_out" => "sessions#destroy", :as => "log_out"
post "sessions/create"
# get "sign_up" => "users#new"#, :as => "sign_up"
get "organization_login" => "sessions#tenant_login", :as => "organization_login"
post "sessions/tenant_login_process"
get  "forgot_password" => "sessions#forgot_password", :as => "forgot_password"
get  "confirm_password" => "sessions#confirm_password", :as => "confirm_password"
get  "reset_password" => "sessions#reset_password", :as => "reset_password"
post  "forgot_password_link" => "sessions#forgot_password_link", :as => "forgot_password_link"
post "reset_password" => "sessions#reset_password_update"

get "staff" => "users#index"
get "new_job_card" => "job_cards#new"

resources :users
resources :particulars
resources :job_cards
resources :customer_vehicles
resources :customers
resources :service_bills
resources :spare_bills
resources :spares_inventories
resources :spare_prices
resources :purchase_logs
resources :spares
resources :spares_categories
resources :units


  root "processes#dashboard"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
