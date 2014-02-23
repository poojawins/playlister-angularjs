'use strict';

var playlistApp = angular.module("playlistApp", [
  "ngRoute",
  "playlistControllers"
  ]);
// Declare app level module which depends on filters, and services

playlistApp.config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/songs', {templateUrl: 'partials/playlist.html', controller: 'PlaylistCtrl'});
  $routeProvider.otherwise({redirectTo: '/songs'});
}]);
