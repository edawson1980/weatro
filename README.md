Welcome to WEATRO, where we bring you real-time train arrival data and weather information for all stations in the WMATA Metro system.

WEATRO is a single-page application consisting of a Rails 5 back-end and an Angular front-end.  Additionally, we used two external APIs (WMATA train arrival data and WeatherUnderground weather data).  WEATRO was built over five days in May 2017.

WEATRO Team Members:

Ammar Alasadi :  Models(R), Controllers(R), CRUD (A) Migrations(R), APIs, CSS, Controllers(A), Views and layout, team planning.

Erin Dawson :  Image files, seed data, README file, internet research, general support, team planning.

Ick Hyun Kwon : Angular(app.js and index.html), Controllers(A), seed data (stations and votes), general support, team planning.

All three team members had an equal role in planning, troubleshooting, problem-solving and deploying on Heroku.

WEATRO User Stories:

1) Th user is presented with a list of metro stations.
2) The user will be able to click on a station to view relevant station information.
3) The user is able to view Transit and Weather information on demand.
4) The user can search stations by name, line, and destinations.
4) The user is able to rate the station by writing a review.
5) The user is able to delete the comment.



MVP (Bronze):
- Two models associated models using Rails 5 back-end (Station and Vote)
- Implement two external APIs (WMATA and WU)
- Make the APIs dynamic to get information on specific station.
- Making the style responsive using Flex-Box.


Silver:
- Full CRUD functionality on a nested model (Vote).
- User Alerts to reflect any WMATA service alerts or inclement weather alerts. (Not achieved)

Gold:
A personal list of favorite stations for easy access (Not achieved)


Technologies Used:

Rails 5, AngularJs, jQuery, Ajax, Json, Ajax, HTML5, CSS3, javaScript.

ERD Links:  https://www.lucidchart.com/publicSegments/view/2f886e69-bac7-4a6c-afd9-dd3d0f843095/image.jpeg
