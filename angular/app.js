angular
  .module("weatro", [
    "ui.router",
    "ngResource"
  ])
  .config([
    "$stateProvider",
    RouterFunction
  ])
  .factory("WeatroFactory", [
    "$resource",
    WeatroFactoryFunction
  ])

  .factory("VotesFactory", [
    "$resource",
    VotesFactoryFunction
  ])

  .controller("StationIndexController", [
    "WeatroFactory",
    StationIndexControllerFunction
  ])
  .controller("StationShowController", [
    "WeatroFactory",
    "VotesFactory",
    "$stateParams",
    StationShowControllerFunction
  ]);



  function RouterFunction($stateProvider){
    $stateProvider
    .state("stationIndex", {
      url: "/stations",
      templateUrl: "/ng-views/index.html",
      controller: "StationIndexController",
      controllerAs: "vm"
    })
    .state("stationShow", {
      url: "/stations/:id",
      templateUrl: "/ng-views/show.html",
      controller: "StationShowController",
      controllerAs: "vm"
    })

  }


  function WeatroFactoryFunction($resource) {
    return $resource("http://localhost:3000/stations/:id")
  }

  function VotesFactoryFunction($resource) {
    return $resource("http://localhost:3000/stations/:station_id/votes", {},{
      method: "GET",
      isArray: true
    })
  }

  function StationIndexControllerFunction(WeatroFactory){
    this.stations = WeatroFactory.query();
  }

  function StationShowControllerFunction(WeatroFactory, VotesFactory, $stateParams) {
    this.station = WeatroFactory.get({id: $stateParams.id});
    // this.votes = VotesFactory.query({station_id: $stateParams.id});
    // console.log("the votes", this.votes)
    // console.log("the station", this.station)
  }
