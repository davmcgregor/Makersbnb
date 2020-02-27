### [Makers Academy](http://www.makersacademy.com) - Week 6 Team programming challenge 

# MakersBnB 🏠

#### Technologies: Javascript, Jasmine, Ruby, Rspec, Capybara, Sinatra, ActiveRecord, SQL, HTML, CSS, RuboCop, ESLint

[Task](#Task) | [Collaborators](#Collaborators) | [Installation Instructions](#Installation) | [Headline Specifications](#Headline_Specifications) | | [User Stories](#User_Stories) | [Domain Model](#Domain_Model) | [Mockup](#Mockup) | [Further improvements](#Further_Improvements)

![space-pic](space-pic.jpg)

## <a name="Task">The Task</a>

Build a web application that allows users to list spaces they have available, and to hire spaces for the night.

This challenge is the first weekly team programming challenge at [Makers Academy](https://github.com/makersacademy).

## <a name="Collaborators">Collaborators</a>

[Elena Beccaro](https://github.com/elebecca)
[Liz Daly](https://github.com/lookupdaily)
[Barri Faryad](https://github.com/BarriF13)
[Ellie Jones](https://github.com/EllieRichardsonJones)
[David McGregor](https://github.com/davmcgregor)

## <a name="Installation">Installation Instructions</a>

1. Fork this repository, clone to your local machine then change into the directory:
```
$ git clone git@github.com:davmcgregor/Makersbnb.git
$ cd Makersbnb
```

2. Load dependencies with bundle:
```
$ gem install bundle
$ bundle
```

3. Access to the database is controlled by an ORM, ActiveRecord. ActiveRecord rake tasks will are used to migrate the development and test databases. 

To migrate the development and test databases, please run the following command:
```
$ rake db:create
```

4. To poplulate the databases with the appropriate tables, run the following migrations:
```
$ rake db:migrate
$ rake db:migrate RACK_ENV=test
```

5. Run the app on a local server: 
```
$ rackup
```
To view the app navigate to: http://localhost:9292/

6. Tests were written with RSpec and Capybara. To run the tests in terminal: 
```
$ cd Makersbnb
$ rspec
```

## <a name="Headline_Specifications">Headline Specifications</a>

* Any signed-up user can list a new space.
* Users can list multiple spaces.
* Users should be able to name their space, provide a short description of the space, and a price per night.
* Users should be able to offer a range of dates where their space is available.
* Any signed-up user can request to hire any space for one night, and this should be approved by the user that owns that space.
* Nights for which a space has already been booked should not be available for users to book that space.
* Until a user has confirmed a booking request, that space can still be booked for that night.

## <a name="User_Stories">User Stories</a>

### MVP

```
As a user,
So I can list my space,
I would like to be able to sign up
```
```
As a user,
So I can manage my spaces,
I would like to be able to sign in
```
```
As a user,
So I can finish managing my spaces,
I would like to be able to sign out
```
```
As a user,
So I can rent my property,
I would like to list a space
```

### More features

```
As a user,
So I can manage my property,
I would like to be able to add a name, price and description
```
```
As a user,
So I can manage my properties,
I would like to be able to list multiple spaces   
```
```
As a user,
To show my space is available,
I would like to be able to specify a range of dates
```
```
As a renter,
To rent a space,
I would like to be able to see a list of spaces
```
```
As a renter,
To rent a space,
I would like to see a space's available dates
```
```
As a renter,
To rent a space,
I would like to request to book a space
```
```
As a user,
To manage my spaces,
I would like to view booking requests
```
```
As a user,
To confirm a rental,
I would like to approve a booking
```
```
As a user,
To prevent double-bookings,
I would like a space to be unavailable during booked dates 
```

## <a name="Domain_Model">Domain Model</a>

![Domain model](Domain_model.jpg)

## <a name="Mockup">Mockup</a>

![Mockup](Mockup.jpg)

## <a name="Further_Improvements">Further Improvements</a>

* Users should receive an email whenever one of the following happens:
- They sign up
- They create a space
- They update a space
- A user requests to book their space
- They confirm a request
- They request to book a space
- Their request to book a space is confirmed
- Their request to book a space is denied
* Users should receive a text message to a provided number whenever one of the following happens:
- A user requests to book their space
- Their request to book a space is confirmed
- Their request to book a space is denied
* A ‘chat’ functionality once a space has been booked, allowing users whose space-booking request has been confirmed to chat with the user that owns that space
* Basic payment implementation though Stripe.