/**
 * Created by kimhayden on 9/25/15.
 */
var app = angular.module('myApp', []);

//contactController

//app.controller('contactController', function($scope) {
//
//    $scope.form = {};
//
//    // create a message to display in our view
//    //$scope.message = 'I think I can. I think I can' + item.name;
//
//    $scope.contactForm = function(){
//        var data = ({
//            name: this.name,
//            email: this.email,
//            subject: this.subject,
//            message: this.message
//        });
//
//        alert('Sending the email');
//
//        $http.post('/sendEmail', form).then(function(response) {
//            // provided that the `transporter.sendMail` returned a good response
//            alert('The email was sent');
//        }, function(response) {
//            // provided that the `transporter.sendMail` returned a bad response
//            alert('The email did not send');
//        });
//
//        console.log($scope.form);

        //$http('/sendEmail', form)
//    };
//});

    app.controller('mainController', function($scope, $http) {
        //{text:"Apple"}, {text:"Banana"}, {text:"Orange"}, {text:"Lemon"}
        $scope.items = [];
        $scope.showContact = false;
        $scope.add = function() {
        console.log($scope);
            // Get all items
            $http.post('/search', $scope.searchTerm)
                .success(function (data) {

                    var scopeShow = function(code, scopeHide){
                        switch(code) {
                            case 0:
                                $scope.show0 = scopeHide;
                                break;
                            case 1:
                                $scope.show1 = scopeHide;
                                break;
                            case 2:
                                $scope.show2 = scopeHide;
                                break;
                            case 3:
                                $scope.show3 = scopeHide;
                                break;
                            case 4:
                                $scope.show4 = scopeHide;
                                break;
                            case 5:
                                $scope.show5 = scopeHide;
                                break;
                            case 6:
                                $scope.show6 = scopeHide;
                                break;
                        }
                    };

                    $scope.items = data;
                    if ($scope.items.length ===0){
                        $scope.showContact = true;
                        for (i = 0; i <= 6; i++){
                            scopeShow(i, false);
                        }
                    } else {
                        $scope.showContact = false;

                        var code = $scope.items[0].code;

                        console.log("code: ", code);
                        for (i = 0; i <= 6; i++){
                            scopeShow(i, code === i);
                        }
                    }
                    console.log(data);
                })
                .error(function (response) {
                    console.log('Error: ' + response.message);
                });
        };


    });

//typeAhead.controller('searchController', function($http) {
//    return {
//        get: function(url) {
//            return $http.get(url).then(function(resp) {
//                return resp.data; // success callback returns this
//            });
//        }
//    };

//});