# Dog Days Frontend

[![Build Status](https://travis-ci.com/justinmauldin7/Dog_Days_FE.svg?branch=master)](https://travis-ci.com/justinmauldin7/Dog_Days_FE)


Dog Days is a Mod4 take home challenge project at [Turing School of Software & Design](https://turing.io/) where one student with 6 months experience in software development has 3 days to create an app using the dogs.ceo API.

![Current Version](.jpg)



#### Dog Days Production Links:
Live App:

Backend API: https://dog-days-api.herokuapp.com/api/v1/dogs


#### Dog Days Github Repositories:
Frontend: https://github.com/justinmauldin7/Dog_Days_FE

Backend: https://github.com/justinmauldin7/Dog_Days_BE

#### Dog Days Project Board Link:
https://github.com/justinmauldin7/Dog_Days_BE/projects/1


## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

#### Prerequisites:

* Install Ruby (Version 2.4.5) [Download here](https://www.ruby-lang.org/en/news/2018/10/17/ruby-2-4-5-released/)
* Install Rails (Version 5.2.2) - ```gem install rails -v 5.2.0.beta2 --pre```
* Install Bundler (Version 2.0) - ```gem install bundler```
* Heroku Account - (Create a free account [here](https://signup.heroku.com/) if you don't have one already.)


### Installing:

To run this application locally, clone this [repo](https://github.com/justinmauldin7/Dog_Days_FE) and follow the steps below:

1) Install dependencies:
```
$ bundle install
```

2) Install Rspec:
```
$ rails g rspec:install
```

3) Start your server:
```
$ rails s
```

4) Open browser and navigate to:

```
localhost:3000/api/v1/dogs
```


## Running the Test Suite

Dog Days has a suite of tests for every API endpoint in the app.

#### Running the Full Test Suite:

From the root of the directory, type the below command to run the full test suite:

```
$ rspec
```


## Deployment

To deploy this app through Heroku as we have, you can follow these [instructions](https://devcenter.heroku.com/articles/git) on Heroku's website.

## Built With

* [Ruby - Version 2.4.5](https://ruby-doc.org/core-2.4.5/) - Base code language
* [Rails - Version 5.2.2](https://guides.rubyonrails.org/v5.2/) - Web framework used
* [Faraday](https://github.com/lostisland/faraday) - HTTP Client for API calls
* [RSpec](http://rspec.info/documentation/) - Testing Suite
* [TravisCI](https://travis-ci.org/) - Used for continuous integration on frontend & backend
* [Heroku](https://www.heroku.com/) - Used to deploy to production for frontend & backend


## Contributing

If contributing to the backend repository, you can submit a pull request [here](https://github.com/justinmauldin7/Dog_Days_BE).

If contributing to the frontend repository, you can submit a pull request [here](https://github.com/justinmauldin7/Dog_Days_FE).

I will review the request and merge it into master if it is approved.


## Author

* **Justin Mauldin** - *Team member* - [Justin's Github](https://github.com/justinmauldin7)


## Acknowledgments

* Thanks to our Mod4 instructors [Cory Westerfield](https://github.com/corywest) & [Dione Wilson](https://github.com/dionew1) for all their help and insight on this project.

* Thanks to all our other fellow [Turing School of Software & Design](https://turing.io/) - Mod4 classmates that helped think through design decisions on this project as well.
