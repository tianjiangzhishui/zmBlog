

var app=angular.module('zmBlog',['utilityModule']);
//配置路由词典
app.config(['$stateProvider','$urlRouterProvider',function($stateProvider,$urlRouterProvider){
    $stateProvider
        .state('aboutMe',{//关于我
            url:'/aboutMe',
            templateUrl:'tpl/aboutMe.html'
        })
        .state('flash',{//视频教程
            url:'/flash',
            templateUrl:'tpl/flash.html'
        })
        .state('main',{//主页
            url:'/main',
            templateUrl:'tpl/main.html'
        })
        .state('message',{//留言板
            url:'/message',
            templateUrl:'tpl/message.html'
        })
        .state('study',{//学无止境
            url:'/study',
            templateUrl:'tpl/study.html'
        })
        .state('webTemplate',{//网站模板
            url:'/webTemplate',
            templateUrl:'tpl/webTemplate.html'
        })
        .state('write',{//个人日记
            url:'/write',
            templateUrl:'tpl/diary.html'
        })
        .state('webSearch',{//搜索框
            url:'/webSearch',
            templateUrl:'tpl/include/webSearch.html'
        })
        .state('studyContent',{
            url:'/studyContent',
            templateUrl:'tpl/studyContent.html'
        })
        // 网站模板配置路由
        .state('webPersonal',{
            url:'/webPersonal',
            templateUrl:'tpl/webTemplate/webPersonal.html',
            parent:'webTemplate'//父片段的状态
        })
        .state('wordPress',{
            url:'/wordPress',
            templateUrl:'tpl/webTemplate/wordPress.html',
            parent:'webTemplate'
        })
        .state('company',{
            url:'/company',
            templateUrl:'tpl/webTemplate/company.html',
            parent:'webTemplate'
        });
        $urlRouterProvider.otherwise('/main')//其他
}]);

//创建控制器，封装了跳转的方法
var list=null;
app.controller('parentCtrl', ['$scope', '$state', '$zmBlogHttp',function ($scope, $state,$zmBlogHttp) {
    //$state.go('触发的状态名字',{参数名字:值});
            $scope.jump = function (desState,arg) {
                $state.go(desState,arg);
            };

    //发送请求
            $scope.toDestination=function(desState,sendUrl){
                // 调用跳转函数
                $scope.jump(desState);
                // 发送请求,返回数
                $zmBlogHttp.sendRequest(sendUrl,function(data){
                   console.log(data);
                   return data;
                })
            };

        }
    ]);
//给网站模板创建一个控制器webTemplateCtrl
app.controller('webTemplateCtrl',['$scope',function($scope){
    // 像个人博客模板发送请求
    $scope.toWebPersonal=function(){
        $scope.webPersonalList=[];
        $scope.webPersonalList=$scope.toDestination('webPersonal','data/webTemplate/webPersonal.php');
        console.log($scope.webPersonalList);
    };
    $scope.toWordPress=function(){}

}]);



