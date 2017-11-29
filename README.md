# Reddit-On-Rails
A simplified, functional clone of Reddit implemented with Rails

## Getting Started
These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites
Install Homebrew
```
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

Install Ruby Version Manager (RVM) 
```
gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3
\curl -sSL https://get.rvm.io | bash -s stable
```

Install Ruby
```
rvm install 2.4.1
```

Install Rails
```
gem install rails --version 5.1.4
```

Install MongoDB
```
brew install mongodb
```

### Installing 
Start Mongo
```
brew services start mongodb
```
Shell access using
```
mongo
```
Start rails server in application root folder
```
rails s 
```
<br>Start up application in browser at **localhost:3000**

## Running the Tests 

### Rspec Tests
Unit tests that test creation and valiation of mongo models <br>

Run in application root folder
```
rspec -fd
```


## Built With
* [Rails](http://rubyonrails.org/) - Web framework used
* [Mongoid](https://rubygems.org/gems/mongoid) - Ruby framework used for MongoDB back-end models and queries 
* [Bootstrap-sass](https://rubygems.org/gems/bootstrap-sass) - Used to create UI 
* [Devise](https://rubygems.org/gems/devise) - Used to manage users and user authentication
* [Simple-form](https://rubygems.org/gems/simple_form) - Used for user input fields 


