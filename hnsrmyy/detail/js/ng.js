
// 创建并调用模块
var topDetail = angular.module('subApp',['ng',ngRoute]);
// 配置路由
topDetail.config(function($routeProvider){
    $routeProvider
    .when('/jiuzhen',{
            templateUrl:'template/jiuzhen.html'
        })
});