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
  .factory("VoteFactory", [
    "$resource",
    VoteFactoryFunction
  ])
  .controller("StationIndexController", [
    "WeatroFactory",
    StationIndexControllerFunction
  ])
  .controller("StationShowController", [
    "WeatroFactory",
    "VoteFactory",
    "$stateParams",
    StationShowControllerFunction
  ])
  .controller("VoteEditController", [
    "VoteFactory",
    "$stateParams",
    "$state",
    VoteEditControllerFunction
  ])

function RouterFunction($stateProvider) {
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
    .state("voteEdit", {
      url: "/stations/:station_id/votes/:id/edit",
      templateUrl: "/ng-views/voteEdit.html",
      controller: "VoteEditController",
      controllerAs: "vm"
    })
}


function WeatroFactoryFunction($resource) {
  return $resource("http://localhost:3000/stations/:id")
}

function VoteFactoryFunction($resource) {
  return $resource("http://localhost:3000/stations/:station_id/votes/:id", {}, {
    update: {
      method: "PUT"
    }

  })
}

function StationIndexControllerFunction(WeatroFactory) {
  this.stations = WeatroFactory.query();
}

function StationShowControllerFunction(WeatroFactory, VoteFactory, $stateParams) {
  let self = this
  this.station = WeatroFactory.get({id: $stateParams.id})
  this.create = function () {
    console.log(this.vote)
    let vote = new VoteFactory()
    vote.score = this.vote
    vote.$save({station_id: $stateParams.id}).then(function (res) {
      console.log(res)
    })
  }
}

function VoteEditControllerFunction(VoteFactory, $stateParams, $state) {
  this.vote = VoteFactory.get({
    id: $stateParams.id,
    station_id: $stateParams.station_id
  })
  this.update = function () {
    this.vote.$update({id: $stateParams.id, station_id: $stateParams.station_id}, function(data){
      let id = data.id
      $state.go("stationShow", {id: id})
    })
  }
  this.destroy = function() {
    this.vote.$delete({
      id: $stateParams.id,
      station_id: $stateParams.station_id
    })
  }
}
