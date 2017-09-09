Rails.application.routes.draw do
  post 'track/' => 'scrape#track'
  post 'track_adlibs/' => 'scrape#track_adlibs'
  post 'album/' => 'scrape#album'
  post 'album_adlibs/' => 'scrape#album_adlibs'
end
