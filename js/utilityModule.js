/**
 * Created by UID业余班 on 2017/9/18.
 */
//创建一个模块utilityModule，在这个模块创建一个服务$zmBlogHttp,封装一个方法sendRequest:当调用该方法时，会发起网络请求,在发起请求时，显示一个加载中的窗口($ionicLoading 加载中...),请求完成之后，隐藏窗口。

//创建一个模块utilityModule
var utilityModule = angular.module('utilityModule', ['ionic']);//这就是创建模块，用变量接收模块

//创建一个服务$zmBlogHttp
utilityModule.service('$zmBlogHttp',['$ionicLoading','$http',function($ionicLoading,$http){
  //定义两个参数，一个是$http服务的请求地址，一个是请求成功之后要做得操作，第二个参数可以定义一个函数，函数也可以作为参数传入
  this.sendRequest=function(url,handlerFunc){
    //发起网络请求，控制加载中窗口的显示和关闭
    $ionicLoading.show({
      template:'正在为您拼命加载...'
    });
    $http.get(url).success(function(data){

      handlerFunc(data);
      $ionicLoading.hide();
    })
  }

  //定义post方法
  //   this.sendData=function(url,obj,handlerFnc){
  //     $ionicLoading.show({
  //         template:'正在发送，请耐心等待...'
  //     });
  //     var obj=obj;
  //     $httpProvider.defaults.transformRequest=function(){
  //         var str=[];
  //         for(var p in obj){
  //             str.push(encodeURIComponent(p)+'='+encodeURIComponent(obj[p]));
  //         }
  //         return str.json('&');
  //     }
  //     $http.post(url+"?"+str).success(function(data){
  //       handlerFnc(data);
  //       $ionicLoading.hide();
  //     })
  //   }
}]);
//引用的时候，创建控制器，注入服务$kflHttp,调用方法$kflHttp.sendRequest(),ng-click=''