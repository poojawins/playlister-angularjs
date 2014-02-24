'use strict';

// in angular controller, when u $http.get( <datasource>),
// specify the route for the <datasource>
// then you pass in 'data' into the anonymous  function
//and set $scope = data

/* Controllers */
playListerApp.controller("PlayListerCtrl", ["$scope", "$http", function($scope, $http){

}]).
  controller("SongCtrl", ["$scope", "$http", function($scope, $http){
     $http.get("/songs").success(function(data){
       $scope.songs = data;
     });
    
    //$scope.songs = $http.get("/songs");

}]); 