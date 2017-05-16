Welcome to WEATRO, where we bring you real-time train arrival data and weather information for all stations in the WMATA Metro system.

WEATRO is a single-page application consisting of a Rails back-end and an Angular front-end.  Additionally, we used two external APIs (WMATA train arrival data and WeatherUnderground weather data).  WEATRO was built over five days in May 2017.

WEATRO Team Members:

Ammar Alasadi :  Models(R), Controllers(R), Migrations(R), APIs, CSS, Controllers(A)

Erin Dawson :  Image files, seed data (stations), README file, internet research, general support.

Ick Kwon : Angular(app.js and index.html), Controllers(A), seed data (stations and votes),  general support.

All three team members had an equal role in troubleshooting and problem-solving.

WEATRO User Stories:

1) The user will be able to click on a station and see real-time arrival data.
2) The user will be able to click on a station and see real-time weather data for that location.
3) The user will be able to search stations by name.

MVP (Bronze):
Basic CSS, two models (Station and Vote) - one with full CRUD functionality (Vote).  User can search stations, and the view updates dynamically to reflect what the user types into the search box.  All basic data is displayed for each station (name, address, line(s)), in addition to current weather and train arrival data.

Silver:
User Alerts to reflect any WMATA service alerts or inclement weather alerts.

Gold:
The means to set 'Favorite Stations/Locations'
