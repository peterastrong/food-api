/*global angular*/
(function() {
  "use strict";

  angular.module("app").controller("foodsCtrl", function($scope, $http) {
    $scope.setup = function() {
      $http.get("api/v2/foods.json").then(function(response) {
        $scope.foods = response.data;
      });
    };
    
    $scope.addFood = function(newFirstIng, newSecondIng, newFirstSpice, newSecondSpice) {
      var foodParams = {ingredient1: newFirstIng, ingredient2: newSecondIng, spice1: newFirstSpice, spice2: newSecondSpice};
      console.log(foodParams);
      $http.post("api/v2/foods.json", foodParams).then(function(response) {
        $scope.foods.push(response.data);
        $scope.inputFirstIng = null;
        $scope.inputSecndIng = null;
        $scope.inputFirstSpice = null;
        $scope.inputSecndSpice = null;
        $scope.errors = null;
      }, function(error) {
        $scope.errors = error.data.errors;
      });
    }; 

    // $scope.updateFood = function(foodId, updateFirstIng, updateSecondIng, updateFirstSpice, updateSecondSpice) {
    //   var foodParams
    // };

    $scope.toggleOrder = function(attribute) {
      if (attribute !== $scope.orderAttribute) {
        $scope.isDescending = false;
      } else {
        $scope.isDescending = !$scope.isDescending;
      }
      $scope.orderAttribute = attribute;
    };
    $scope.sortArrow = function(attribute) {
      if (attribute === $scope.orderAttribute) {
        return $scope.isDescending ? 'sorted: v' :  'sorted: ^';
      } else {
        return '';
      }
    };
  });
}());