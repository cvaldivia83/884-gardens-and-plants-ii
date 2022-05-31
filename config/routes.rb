Rails.application.routes.draw do
  # resources :gardens  => all seven routes

  # When you start to think about nesting a route
  # ask yourself if you need the :parent_resource_id.
  # Are your models associated? Do they have a relationship?
  # If so, go ahead without fear! You probably need it.

  # The main reason to nest your route is when we have a belongs_to/has_many relationship.
  # In this case, you probably need a nested route. Why?

  # When you create the child instance, YOU MUST assign a parent to it.
  # Said so, you will need to be able to associate those instances
  # in the create action inside the respective controller.
  # general_example: child_instance.parent = parent
  # real_example: review.restaurant = restaurant

  # So, in the belongs_to/has_many relationship
  # WE MUST NEST THE CHILD INTO THE PARENT
  # This is what happens in our `Gardens & Plants` app and
  # in our `Restaurant & Reviews`

  # Keep in mind that we should avoid nested routes.
  # They are easy to do but can get very hard to work with.
  # Only use when necessary.

  resources :gardens, only: :show do
    resources :plants, only: :create
  end

  # To destroy an instance of any class
  # We only need to know the id and voi la
  resources :plants, only: :destroy do
    resources :plant_tags, only: [:new, :create]
  end
end
