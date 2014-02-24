'use strict';


var playListerApp = angular.module("playListerApp", [
  "ngRoute",
  //"playListerControllers"
  ]).config( function($routeProvider) {
  $routeProvider.when('/songs', {templateUrl: 'partials/playlist.html', controller: 'SongCtrl'});
  $routeProvider.otherwise({redirectTo: '/songs'});
});
