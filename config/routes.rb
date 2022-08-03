Rails.application.routes.draw do

  namespace :public do
    get 'contacts/new'
  end
  namespace :public do
    get 'notes/remember'
    get 'notes/complete'
    get 'notes/remember_index'
    get 'notes/complete_index'
    get 'notes/search'
    get 'notes/edit'
  end
  # デバイスadmin
  devise_for :admins, skip: [:registrations, :passwords] ,controllers: {
    sessions: "admin/sessions"
  }

  # デバイスuser
  devise_for :users, skip: [:passwords], controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  # Admin側
  namespace :admin do
    resources :contacts, only: [:index, :edit, :update, :destroy]
    resources :users, only: [:index, :show, :edit, :update]
  end

  # User側
  scope module: :public do
    root to: "homes#top"
    resources :users, only: [:edit, :update] do
      collection do
        get :show
      end
    end
    resources :notes, only: [:new, :create, :edit, :update, :destroy] do
      member do
        # 投稿詳細表示（覚える）
        get :remember
        # 投稿詳細表示（覚えた）
        get :complete
        # 投稿内容を覚えた
        get :done
        # 投稿内容を忘れた
        get :forget
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
    resources :tasks, only: [:new, :index, :show, :create, :edit, :update, :destroy] do
      member do
        # 投稿内容の完了一覧
        get :complete
      end
    end
        # お問い合わせ画面/内容送信
    resources :contacts, only: [:new, :create]
  end

end