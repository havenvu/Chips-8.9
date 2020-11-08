Rottenpotatoes::Application.routes.draw do
  resources :movies
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
  get '/similar_movies/:title' => 'movies#find_with_same_director', as: :director_search

end
