Rails.application.routes.draw do
  resources :tweets, only: [:index, :new, :create, :destroy]
  #resources にて自動でルートを設定できる→　indexとnewコントローラーに対し作成
end
