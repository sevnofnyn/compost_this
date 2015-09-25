
////changed this from cats stuff to item stuff

var app = angular.module('app', []);
app.controller("itemController", ['$scope', '$http', function($scope, $http){
    $scope.item = {};
    $scope.items = [];
    var fetchItem = function() {
        return $http.get('/index').then(function(response){
            if(response.status !== 200){
                throw new Error('Failed to fetch item from the API');
            }
            $scope.item = {};
            $scope.items = response.data;
            return response.data;
        })
    };
    $scope.add = function(item){
        return $http.post('/add', item).then(fetchItem);
    };
    fetchItem();
}]);