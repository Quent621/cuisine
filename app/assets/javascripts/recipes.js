var app = angular.module('recipe', []);

app.controller('RecipeCtrl', ['$scope', '$http', function ($scope, $http) {

    $scope.ingredients = [];

    $scope.addIngredient = function () {
        data = {ingredient: {name: $scope.name, quantity: $scope.quantity}};
        $http.post('/ingredients.json', data)
            .success(function (response, status, headers, config) {
                var ingredient = {
                    name: angular.copy($scope.name),
                    quantity: angular.copy($scope.quantity)
                };
                $scope.name = '';
                $scope.quantity = '';
                $scope.ingredients.push(ingredient);
            })
            .error(function (response, status, headers, config) {
                console.log('Error');
            });
    };
}]);
