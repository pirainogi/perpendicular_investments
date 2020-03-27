# Perpendicular Investments
Developed by Gabbie Piraino

Full-Stack Rails application with Investor CRUD functionality

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
Your server will automatically spin up on `localhost:3000` unless otherwise specified. When you navigate there in the browser, you should see the standard `You're on Rails` homepage. The available routes to you include: 
* `localhost:3000/investors` will render all of the investors 
* `localhost:3000/investors/new` will render a form to create a new investor, and will POST to the database if the entered data is valid
  * The form allows the client to select _multiple_ files and they are associated with that Investor. Files are saved locally. JS and CSS are implemented to render file upload progress for all selected files.  
* `localhost:3000/investors/[:id]` will render a specific investor with previews for image and PDF files. A link to download the file is also rendered. 
* `localhost:3000/investors/[:id]/edit` will render a form to edit an existing investor, and will PATCH to the database if the entered data is valid 

The application also includes DELETE functionality via a link. 

Investors also includes Delete functionality. Includes are links to aid in navigation. 

## Resources: 
[Active Storage Overview](https://edgeguides.rubyonrails.org/active_storage_overview.html)

## WIP 
I attempted to create a User model with associated authorization and authentication on a separate `User` branch. Users would have_many Investors and Investors would belong_to a User. Not yet completed. At this time, login/logout functionality is broken, and Investors are not yet associated with Users. Users cannot view their associated Investors as the functionality has not yet been created. 
