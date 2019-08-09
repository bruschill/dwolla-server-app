# Dwolla Server App ![travis status](https://travis-ci.org/bruschill/dwolla-server-app.svg?branch=master)

### Setup
1. Install Ruby 2.6.3
	- [`rbenv`](https://github.com/rbenv/rbenv) is a good choice for a version manager
1. clone the project and `cd` into the directory
1. run `gem install bundler`
1. run `bundle install`

### Starting the entire project
**Note**: requires [this project](https://github.com/bruschill/dwolla-client-app) to be cloned in the same parent directory to be of any use.

Run `foreman start`

### Debugging the app
Run `rails server`. 

Server starts at `localhost:3000`.

### Running the tests
Run `rails test`.
