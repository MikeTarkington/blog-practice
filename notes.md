- `rails new repo-folder-name`
- `rake db:create`
- `rake db:migrate`
- `rails s` (to open localhost:3000 and check things worked ok)
- more detailed instructions for get setup here: https://help.github.com/articles/adding-an-existing-project-to-github-using-the-command-line/
- `git init` (inside dir)
- `git add .`
- `git commit -m "Initial commit"`
- create github repo with no license or readme
- `git remote add origin remote repository URL`
- `git push -u origin master`
- `rails g controller pluralized-controller-name` (i.e. posts )
- prev step creates controller and posts sub-folder in views folder
- go to routes.rb and put in corresponding controller name i.e. `resources :posts`
- and set root on next line i.e. `root "posts#index"`
- for in the corresponding controller add `def index end`, `def new end`, etc...
- create corresponding views files in the generated sub-folder
- `form_for` helper is excellent for creating a form and uses things like `f.label :thing`, `f.text_field :thing`, `f.text_area :thing`, and `f.submit`
- `rails g model Post title:string body:text` helps to quickly generate a model and migration
- in making a create etc where params are taken in from a form rails needs us to set a `private` method i.e. `def post_params` that outlines which params are required and what attributes are permitted `params.require(:post).permit(:title, :body)`