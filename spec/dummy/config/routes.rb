Rails.application.routes.draw do
  mount Rankit::Engine, :at => "/rankit"
end
