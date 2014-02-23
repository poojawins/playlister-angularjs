'use strict';

var playListerApp = angular.module("playListerApp", [
  "ngRoute",
  "playListerControllers"
  ]);
// Declare app level module which depends on filters, and services

playlistApp.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/songs', {templateUrl: 'partials/playlist.html', controller: 'PlayListerCtrl'});
  $routeProvider.otherwise({redirectTo: '/songs'});
}]);
