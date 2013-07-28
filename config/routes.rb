Emporium::Application.routes.draw do
  devise_for :accounts
  root to: "pages#splash"
end
