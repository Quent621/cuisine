var app = angular.module('recipe', []);

app.controller('RecipeCtrl', ['$scope', '$http', function ($scope, $http) {

    $scope.ingredients = [];
    $scope.addIngredient = function () {
        var ingredient = {
            name: angular.copy($scope.name),
            quantity: angular.copy($scope.quantity),
            unity: angular.copy($scope.unity)
        };
        $scope.name = '';
        $scope.quantity = '';
        $scope.unity = '';
        $scope.ingredients.push(ingredient);
        $scope.addFinal = function () {
            data = {ingredient: {name: $scope.name, quantity: $scope.quantity, unity: $scope.unity}};
            $http.post('/ingredients.json', data);
            data2 = {step: {content: $scope.content}};
            $http.post('/steps.json', data2)
        }
    };


    $scope.steps = [];
    $scope.addStep = function () {
        var step = {
            content: angular.copy($scope.content)
        };
        $scope.content = '';
        $scope.steps.push(step);
    };


}]);



/*    $scope.ingredients = [];
 $scope.addFinal = function () {

 data = {ingredient: {name: $scope.name, quantity: $scope.quantity, unity: $scope.unity}};
 $http.post('/ingredients.json', data)
 .success(function (response, status, headers, config) {

 $scope.ingredients.push(ingredient);
 })
 .error(function (response, status, headers, config) {
 console.log('Error');
 });
 }*/

/*
data = {step: {content: $scope.content}};
$http.post('/steps.json', data)
    .success(function (response, status, headers, config) {

    })
    .error(function (response, status, headers, config) {
        console.log('Error');
    });*/




