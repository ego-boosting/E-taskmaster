Rails.application.routes.draw do

  # デバイスadmin
  devise_for :admins, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  # デバイスuser
  devise_for :users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  # Guestuser
  devise_scope :user do
    post "users/guest_sign_in", to: "public/sessions#guest_sign_in"
  end

  # Admin側
  namespace :admin do
    resources :contacts, only: [:index, :edit, :update, :destroy] do
    end
    resources :users, only: [:index, :show]
  end

  # User側
  scope module: :public do
    root to: "homes#top"
    get '/users/unsubscribe' => 'users#unsubscribe', as: 'unsubscribe'
    patch '/users/withdrawal' => 'userrs#withdrawal', as: 'withdrawal'
    resources :users, only: [:edit, :update] do
      collection do
        get :show
      end
    end
    resources :notes, only: [:new, :show, :edit, :update, :destroy] do
      member do
        # 投稿内容を覚えた
        post :done
        # 投稿内容を忘れた
        post :forget
      end
      collection do
        # 投稿一覧表示（覚える）
        get :remember_index
        # 投稿一覧表示（覚えた）
        get :complete_index
        # 検索結果表示
        get :search
      end
    end
    post '/', to: 'notes#create', as: 'notes'
    resources :tasks, only: [:new, :index, :show, :create, :edit, :update, :destroy] do
      member do
        # 投稿内容の完了一覧
        get :complete
      end
    end
        # お問い合わせ画面/内容送信
    resources :contacts, only: [:new, :create]
    post 'contacts/confirm', to: 'contacts#create_confirm', as: 'create_confirm'
    get 'contacts/confirm', to: 'contacts#confirm'
    post 'contacts/back', to: 'contacts#back', as: 'back'
    get 'contacts/done', to: 'contacts#done', as: 'done'

  end

end
