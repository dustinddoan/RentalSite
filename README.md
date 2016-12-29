# Rental Site

RentalSite is a web-application built on Ruby on Rails. This is a rental site where users can sign up and post their listings or sign in and book a rent
### User Story
- As a user, I am able to browsing the content and view details of any listing
- As a user, I must sign up in order to post new listing and book a rent
- A a user, I am able to send message to host without signing in
- A a user, I am able to manage my inventory such as list new property, edit the current listing and delete listing
### Tech
Rental Site uses a number of open source projects to work properly:

* [Ruby on Rails](http://rubyonrails.org/) - a server-side web application framework written in Ruby!
* [Twitter Bootstrap](http://getbootstrap.com/) - great UI boilerplate for modern web apps
* [jQuery](http://jqueryui.com/) - a fast, small, and feature-rich JavaScript library
* [paperclip](https://github.com/thoughtbot/paperclip) - [aws-sdk] and [aws-sdk-resources] for files upload to AWS
* [geocoder](https://github.com/alexreisner/geocoder) gem and [googlemap] api for creating map based on address
### Using online via *Heroku*
- Click the link below to use it online
*https://boiling-stream-10074.herokuapp.com/*
### Requirement for using locally
- You must have Amazon Web Service account to upload file to S3
- You must register with Google for key in order to using google map api
- Fork to your Github account and clone to your local machine
- Replace your AWS key in ***app/config/environments/development.rb***
- Replace your Google Map Api key in ***app/view/houses/show.html.erb***
```sh
$ bundle install //install gem in Gemfile
$ rails s //run the server
```
- Open your web broswser and enter ***http://localhost:3000***

### Development

Want to contribute? Great!
Future works:
- Setup ***Admin*** account to manage user and listing
- Post information from ***Message to Host*** and ***Ready to Book*** modal to host aacount
- Add ***Seach*** function base on ***current location, city or nearby...***
- Add more pictures for each house



License
----

MIT
