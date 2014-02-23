'use strict';


// Declare app level module which depends on filters, and services
angular.module('playlistApp', [
  'ngRoute',
  'playlistApp.filters',
  'playlistApp.controllers'
]).
config(['$routeProvider', function($routeProvider) {
  $routeProvider.when('/view1', {templateUrl: 'partials/playlist.html', controller: 'PlaylistCtrl'});
  $routeProvider.otherwise({redirectTo: '/'});
}]);
