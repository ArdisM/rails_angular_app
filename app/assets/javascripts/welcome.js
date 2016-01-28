// Place all the behaviors and hooks related to the matching controller here.
// All this logic will automatically be available in application.js.
var app = angular.module('Aces', []);

app.controller('PilotsController', ['$scope', '$http', function($scope, $http){

  $http.get('/api/pilots').then(function(response){
    var data = response.data;
    $scope.pilots = data.pilots;
  });


  $scope.newPilot = {};
  $scope.createPilot = function(){
    $http.post('/api/pilots', {pilot: $scope.newPilot}).then(function(response){
      var data = response.data;
      $scope.pilots.push( data );
    });
  };

}]);
