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


$(document).ready(function() {
    $(".btn-pref .btn").click(function () {
        $(".btn-pref .btn").removeClass("btn-primary").addClass("btn-default");
        // $(".tab").addClass("active"); // instead of this do the below
        $(this).removeClass("btn-default").addClass("btn-primary");
    });
});