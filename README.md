# Perpendicular Investments
Developed by Gabbie Piraino

Full-Stack Rails application with User CRUD and associated Investor CRUD functionality. Users can also be authorized/authenticated to login, and can also log out.

## Built With
* Ruby on Rails
* PostgreSQL
* HTML/CSS

## Ruby Gems
* `poppler` for PDF preview
* `mini_magick` for image preview

## Prerequisites
You will need `ruby` version `2.6.3` or higher, `rails` version `5.2.4` or higher, and the Ruby `bundler` gem installed on your computer in order to run this app. You will also need `PostgreSQL` installed and running in order to create and migrate your database.

#### Installation Resources:
* [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
* [Rails](https://guides.rubyonrails.org/v5.0/getting_started.html)
* [PostgreSQL](https://www.postgresql.org/download/)
* [Bundler](https://bundler.io/)

In order to run this app, first clone this repo down onto your local machine and navigate to that directory. Then run `bundle install` in order to install all of the requisite gems locally.

* `rails db:create` to create your local database
* `rails db:migrate` to migrate the tables in your local database
* `rails s` to spin up your sever

## Navigation in Browser
Your server will automatically spin up on `localhost:3000` unless otherwise specified. The available routes to you include:
* `localhost:3000/` will render the homepage and direct clients to either login or signup
* `localhost:3000/login` will render the login form and authenticate/authorize previously created users to access the application. The client is redirected to their user page if successful.
* `localhost:3000/users/new` will render a form to create a new user, and will POST to the database if the entered data is valid. Client is redirected to their User show page if successful
* `localhost:3000/users/[:id]` will render the logged in User's show page with a table of their associated Investors and links for RUD functionality. A link is provided to also create a new Investor for ease of access. If client attempts to navigate to other User show page, they are directed back to their own show page.
* `localhost:3000/users/[:id]/edit` will render a form to edit an existing User, and will PATCH to the database if the entered data is valid. Client is redirected to User show page if successful
* `localhost:3000/investors` will render all of the logged in User's associated Investors
* `localhost:3000/investors/new` will render a form to create a new investor, and will POST to the database if the entered data is valid
  * The form allows the client to select _multiple_ files and they are associated with that Investor. Files are saved locally. JS and CSS are implemented to render file upload progress for all selected files.  
* `localhost:3000/investors/[:id]` will render a specific Investor with previews for image and PDF files. A link to download the file is also rendered.
* `localhost:3000/investors/[:id]/edit` will render a form to edit an existing Investor, and will PATCH to the database if the entered data is valid. Client is redirected to that Investor show page if successful

Users can log out of the application via a link.
The application also includes DELETE functionality via a link for Users and Investors.

Investors also includes Delete functionality. Includes are links to aid in navigation.

## Resources:
[Active Storage Overview](https://edgeguides.rubyonrails.org/active_storage_overview.html)

## WIP
**Update:** User model is correctly associated with Investor model and functional. Complete User authentication/authorization is implemented.

## Future Features
* Tests
* Ability to detect creation of new Investor when update of existing Investor is actually necessary
