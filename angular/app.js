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
  .factory("WeatroFactory", [
    "$resource",
    FactoryFunction
  ])
  .controller("StationIndexController", [
    "WeatroFactory",
    StationIndexControllerFunction
  ])
  .controller("StationShowController", [
    "WeatroFactory",
    "$stateParams",
    StationShowControllerFunction
  ])


  function RouterFunction($stateProvider){
    $stateProvider
    .state("stationIndex", {
      url: "/stations",
      templateUrl: "js/ng-views/index.html",
      controller: "StationIndexController",
      controllerAs: "vm"
    })
    .state("stationShow", {
      url: "/stations/:id",
      templateUrl: "js/ng-views/show.html",
      controller: "StationShowController",
      controllerAs: "vm"
    })
  }

  function FactoryFunction($resource) {
    return $resource("http://localhost:3000/stations/:id", {}, {
      update: {method: "PUT"}
    });
  }

  function StationIndexControllerFunction(WeatroFactory){
    this.stations = WeatroFactory.query();
  }

  function StationShowControllerFunction(WeatroFactory, $stateParams) {
    this.station = WeatroFactory.get({id: $stateParams.id});
  }
