# Specifications for the Rails Assessment

Specs:
- [x] Using Ruby on Rails for the project
- [x] Include at least one has_many relationship  - User has_many Reviews 
- [x] Include at least one belongs_to relationship - Review belongs_to a User
- [x] Include at least two has_many through relationships - User has_many commented_reviews through comments, User has_many Movies through Reviews 
- [x] Include at least one many-to-many relationship - User has_many Movies through Reviews, Movies has_many Users through Reviews 
- [x] The "through" part of the has_many through includes at least one user submittable attribute, that is to say, some attribute other than its foreign keys that can be submitted by the app's user - Review attributtes rating & content
- [x] Include reasonable validations for simple model objects (list of model objects with validations e.g. User, Recipe, Ingredient, Item) - must be present, email and username mus tbe unique, photo must be URLS ending with .jpg or .png
- [x] Include a class level ActiveRecord scope method (model object & class method name and URL to see the working feature e.g. User.most_recipes URL: /users/most_recipes) - User alpha_order, Movie chrono_order or most_recent_first
- [x] Include signup
- [x] Include login
- [x] Include logout
- [x] Include third party signup/login - Facebook login
- [x] Include nested resource show or index  - users/4/reviews
- [x] Include nested resource "new" form  - movies/2/reviews/new
- [x] Include form display of validation errors - users/new, movies/new, etc.

Confirm:
- [x] The application is pretty DRY
- [x] Limited logic in controllers
- [x] Views use helper methods if appropriate
- [x] Views use partials if appropriate