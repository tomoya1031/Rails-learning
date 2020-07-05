Rails.application.routes.draw do

  get 'todolists/new'
 
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
 
  get 'top' => 'homes#top' #トップページ
 
  post 'todolists' => 'todolists#create' #データ登録

  get 'todolists' => 'todolists#index' #一覧表示

  get 'todolists/:id' => 'todolists#show', as: 'todolist' #詳細表示

  get 'todolists/:id/edit' => 'todolists#edit', as: 'edit_todolist' #編集

  patch 'todolists/:id' => 'todolists#update', as: 'update_todolist' #編集の保存

  delete 'todolists/:id' => 'todolists#destroy', as: 'destroy_todolist' #トップページ
end
