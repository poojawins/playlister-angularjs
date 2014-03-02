'use strict';

/* Controllers */
playListerApp.controller("PlayListerCtrl", ["$scope", "$http", function($scope, $http){

}]).
  controller("SongCtrl", ["$scope", "$http", function($scope, $http){
     $http.get("/songs").success(function(data){
       $scope.songs = data;
     });
    
  $scope.orderProp = 'name';
}]); 