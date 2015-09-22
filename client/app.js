//
//
////changed this from cats stuff to compost stuff
//
//
//var app = angular.module('app', []);
//app.controller("AskController", ['$scope', '$http', function($scope, $http){
//    $scope.compost = {};
//    $scope.composts = [];
//    var fetchCompost = function() {
//        return $http.get('/compost').then(function(response){
//            if(response.status !== 200){
//                throw new Error('Failed to fetch compost from the API');
//            }
//            $scope.compost = {};
//            $scope.composts = response.data;
//            return response.data;
//        })
//    };
//    $scope.add = function(compost){
//        return $http.post('/add', compost).then(fetchCompost);
//    };
//    fetchCompost();
//}]);