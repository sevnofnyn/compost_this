/**
 * Created by kimhayden on 9/25/15.
 */
var app = angular.module('myApp', []);


//contactController

app.controller('contactController', function($scope) {

    $scope.form = {};

    // create a message to display in our view
    //$scope.message = 'I think I can. I think I can' + item.name;

    $scope.sendForm = function(){
        console.log($scope.form);

        //$http('/sendEmail', form)
    };
});

//This is for the search.js file //

//$scope.items = {};


    app.controller('mainController', function($scope, $http) {

        $scope.items = [];
        $scope.showContact = false;
        $scope.add = function() {
console.log($scope);
            // Get all items
            $http.post('/search', $scope.searchTerm)
                .success(function (data) {
                    $scope.items = data;
                    if ($scope.items.length ===0){
                        $scope.showContact = true;
                    } else {
                        $scope.showContact = false;
                    }

                    console.log(data);
                })
                .error(function (response) {
                    console.log('Error: ' + response.message);
                });
        };
    });
