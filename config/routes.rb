Rails.application.routes.draw do
  resources :tweets, only: [:index, :new, :create]
  #resources にて自動でルートを設定できる→　indexとnewコントローラーに対し作成
end
