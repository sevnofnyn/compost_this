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

                        var imgCombo = function imgCombo(img) {
                            var combo = document.getElementById('combo');
                            combo.innerHTML = '<img src="' + img + '"/>';
                        };
                        //put stuff here case statement/switch
                        var showCombo = function (code){
                        //var checkImg = function (img) {
                            switch (img) {
                                //case "Show0":
                                //    myImg("");
                                //    break;
                                //case "Show1":
                                //    myImg("");
                                //    break;
                                case "Show2":
                                    myImg("images/ComposterSMind.jpg");
                                    break;
                                //case "Show3":
                                //    myImg("");
                                //    break;
                                //case "Show4":
                                //    myImg("");
                                //    break;
                                //case "Show5":
                                //    myImg("");
                                //    break;
                                //case "Show6":
                                //    myImg("");
                                //    break;
                                //default:
                                //    myImg("");
                                //    break;
                            //}
                        }
                        };

                    myImg()

                    }

                    console.log(data);
                })
                .error(function (response) {
                    console.log('Error: ' + response.message);
                });
        };

    });
