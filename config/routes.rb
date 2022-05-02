Rails.application.routes.draw do
  resources blogs do
  end
  root to: 'blogs#index'
end
