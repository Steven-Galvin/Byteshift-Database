# Byteshift API
### Ken Rutan and Steven Galvin, August 17th, 2017

With this API, users have the ability to pull information regarding users, beacons, and visits. Users contain a first and last name, status, presence, and email. Beacons contain a name and an identification number. Users and Beacons are joined by Visits which contain a User ID, Beacon ID, enter and exit time, and day. The site is hosted live at https://byteshift-api-sg.herokuapp.com/ and you can use any of the endpoints listed below.

## Endpoints

#### Users
  * Endpoints for GET (all and by id), POST, PUT and DELETE.
  * A RANDOM endpoint that randomly returns a present preferred user.
  * A SEARCH endpoint that accepts email, status, and presence as search queries
  * A CHECK endpoint that accepts email and password as parameters, returning data only if email and password match user in database

#### Beacons
  * Endpoints for GET (all and by id), POST, PUT and DELETE.
  * A SEARCH endpoint that accepts name and identification number as search queries

#### Visits
  * Endpoints for GET (all and by id), POST, PUT and DELETE.
  * A SEARCH endpoint that accepts day as search query

## Installation

As of writing this README, these instructions work on MacOS.

* Run `$ git clone <this-repository-url>`
* Then `$ cd Byteshift-Database`
* Once in the Byteshift-Database folder, run `bundle install` to install gems, `$ rails db:setup` to setup the database, and `$ rails s` to run the server. Then visit http://localhost:3000 to view the app.

## Routes

### Users

#### Show All Users
##### GET `http://localhost:3000/users`
Returns all users.

#### Show Single User
##### GET `http://localhost:3000/users/{id}`
Returns the user matching the id.

#### Create User
##### POST `http://localhost:3000/users?first_name={first_name}&last_name={last_name}...`
Creates a new user.

#### Update User
##### PATCH or PUT `http://localhost:3000/users/{id}?{params}`
Updates specified user.

#### Destroy User
##### DELETE `http://localhost:3000/users/{id}`
Deletes specified user.

#### Random
##### GET `http://localhost:3000/user/random`
Returns a random user.

#### Search
##### GET `http://localhost:3000/user/search?query={params}`
Returns all users with the given query.

#### Check
##### GET `http://localhost:3000/user/check?email={email_params}&password={password_params}`
Returns user with the given email and password.

### Beacons

#### Show All Beacons
##### GET `http://localhost:3000/beacons`
Returns all beacons.

#### Show Single Beacon
##### GET `http://localhost:3000/beacons/{id}`
Returns the beacon matching the id.

#### Create Beacon
##### POST `http://localhost:3000/beacons?name={name}&identification_number={identification_number}`
Creates a new beacon.

#### Update Beacon
##### PATCH or PUT `http://localhost:3000/beacons/{id}?{params}`
Updates specified beacon.

#### Destroy Beacon
##### DELETE `http://localhost:3000/beacons/{id}`
Deletes specified beacon.

#### Search
##### GET `http://localhost:3000/beacon/search?query={params}`
Returns all beacons with the given query.

### Visits

#### Show All Visits
##### GET `http://localhost:3000/visits`
Returns all visits.

#### Show Single Visit
##### GET `http://localhost:3000/visits/{id}`
Returns the visit matching the id.

#### Create Visit
##### POST `http://localhost:3000/visits?enter_time={enter_time}&exit_time={exit_time}...`
Creates a new visit.

#### Update Visit
##### PATCH or PUT `http://localhost:3000/visits/{id}?{params}`
Updates specified visit.

#### Destroy Visit
##### DELETE `http://localhost:3000/visits/{id}`
Deletes specified visit.

#### Search
##### GET `http://localhost:3000/visit/search?query={params}`
Returns all visits with the given query.

## Technologies Used

* Ruby ~> 2.4.1
* Rails ~> 5.1
* ActiveRecord
* Postgres
* Bundler
* HTML
* Faker Gem

## Authors

Ken Rutan & Steven Galvin

## License

MIT License

Copyright (c) 2017

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
