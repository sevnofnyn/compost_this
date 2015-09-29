/**
 * Created by kimhayden on 9/25/15.
 */
var app = angular.module('myApp', []);


//// create the controller and inject Angular's $scope
//app.controller('mainController', function($scope) {
//
//    $scope.item = {};
//    $scope.items = [];
//
//    // create a message to display in our view
//    $scope.message = 'I think I can. I think I can' + item.name;
//
//    $scope.add = function(){
//        alert($scope.item.name);
//        $scope.items.push($scope.item);
//        $scope.item = {};
//    };
//});
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
                //})
                //    if ($scope.items.CN ===C{
                //        $scope.showContact = Carbon;
                //    }
                //        else{
                //        ($scope.items.CN ===N
                //        {
                //            $scope.showContact = Nitrogen;
                //        }

                    console.log(data);
                })
                .error(function (response) {
                    console.log('Error: ' + response.message);
                });
        };
    });
