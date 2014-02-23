'use strict';

var playListerApp = angular.module("playListerApp", []);
// in angular controller, when u $http.get( <datasource>),
// specify the route for the <datasource>
// then you pass in 'data' into the anonymous  function
//and set $scope = data

/* Controllers */
playListerApp.controller("PlayListerCtrl", ["$scope", "$http", function($scope, $http){
    $http.get("/songs/songs.json").success(function(data){
      $scope.songs = data;
    });
    $scope.orderProp('name');
}]);
 