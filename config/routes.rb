Emporium::Application.routes.draw do
  devise_for :accounts

  get "/search" => "pages#search", as: :search

  root to: "pages#splash"
end
