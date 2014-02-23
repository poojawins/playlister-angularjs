'use strict';

var playlistApp = angular.module("playlistApp", []);
// in angular controller, when u $http.get( <datasource>),
// specify the route for the <datasource>
// then you pass in 'data' into the anonymous  function
//and set $scope = data

/* Controllers */
playlistApp.controller("PlaylistCtrl", ["$scope", "$http", "$timeout",
  function($scope, $http, $timeout){
    $http.get("/songs").success(function(data){
      $scope.songs = data;
    });
}]);
 