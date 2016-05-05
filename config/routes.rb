Rails.application.routes.draw do
  root 'games#index'

  resources :games do
    collection do
      post :import
      get :xbox_one
      get :wiiu
      get :wii
      get :xbox_360
      get :xbox
      get :gcn
      get :ps2
      get :n64
      get :ps1
      get :saturn
      get :snes
      get :genesis
      get :nes
      get :pc
      get :searching
    end

  end



end
