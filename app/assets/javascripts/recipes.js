var app = angular.module('recipe', []);

app.controller('RecipeCtrl', ['$scope', '$http', function ($scope, $http) {

    $scope.ingredients = [];

    $scope.addIngredient = function () {
        data = {ingredient: {name: $scope.test}};
        $http.post('/ingredients.json', data)
            .success(function (response, status, headers, config) {
                console.log(status);
                console.log(response);
                $scope.ingredients.push(response.name);
                $scope.test = '';
            })
            .error(function (response, status, headers, config) {
                console.log('Error');
            });
    };
}]);


