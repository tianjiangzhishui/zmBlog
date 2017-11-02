 /**
 * Created by bjwsl-001 on 2017/8/9.
 */
var app = angular.module('kflModule',
    ['utilityModule']);

//设置状态
app.config(function ($stateProvider, $urlRouterProvider,$ionicConfigProvider) {
  $ionicConfigProvider.tabs.position('bottom');
  $stateProvider
      .state('kflStart', {
        url: '/kflStart',
        templateUrl: 'tpl/start.html'
      })
      .state('kflMain', {
        url: '/kflMain',
        templateUrl: 'tpl/main.html',
        controller: 'mainCtrl'
      })
      .state('kflDetail', {
        url: '/kflDetail/:did',
        templateUrl: 'tpl/detail.html',
        controller: 'detailCtrl'
      })
      .state('kflOrder', {
        url: '/kflOrder/:detail/:price',//接收购物车详情中的数据,可以传递多个参数
        templateUrl: 'tpl/order.html',
        controller: 'orderCtrl'
      })
      .state('kflMyOrder', {
        url: '/kflMyOrder',
        templateUrl: 'tpl/myOrder.html',
        controller:'myOrderCtrl'
      })
      .state('kflSettings',{
        url:'/kflSettings',
        templateUrl:'tpl/settings.html',
        controller:'settingsCtrl'
      })
    .state('kflCart',{
      url:'/kflCart',
      templateUrl:'tpl/myCart.html',
      controller:'cartCtrl'
    });
  $urlRouterProvider
      .otherwise('/kflStart')

})

//创建一个父控制器，定义各个片段的跳方法
app.controller('parentCtrl', [
  '$scope', '$state',
  function ($scope, $state) {
    //desState  要跳转页面的状态，
    //arg 要跳转页面的参数名字：值
    $scope.jump = function (desState, arg) {
      $state.go(desState, arg);
    }
  }
]);

//给Main创建一个控制器，$kflHttp在
app.controller('mainCtrl',
    ['$scope', '$kflHttp',
      function ($scope, $kflHttp) {
        //运用任何变量之前都要初始化
        $scope.dishList = [];
        $scope.hasMore = true;
        $scope.inputTxt = {kw: ''};

        //加载菜品
        $kflHttp.sendRequest(
            'data/dish_getbypage.php?start=0',
            function (data) {
              console.log(data);
              $scope.dishList = data;
            }
        )

        $scope.loadMore = function () {
          $kflHttp.sendRequest(
              'data/dish_getbypage.php?start=' + $scope.dishList.length,
              function (data) {
                //如果请求回来的数据小于5，则证明没有数据了
                if (data.length < 5) {
                  $scope.hasMore = false;
                }
                $scope.dishList = $scope.dishList.concat(data);
                //停止 本次 上拉加载更多的动作，但是当没有更多数据之后，要用ng-if控制ion-infinite-scroll元素，否则上拉一次，检查加载一次
                $scope.$broadcast('scroll.infiniteScrollComplete');
              }
          )
        }

        $scope.$watch(
            'inputTxt.kw', //在搜索框中用ng-model='inputTxt.kw'绑定数据，监控
            function () {
              //根据用户的输入，发起网络请求-搜索
              if ($scope.inputTxt.kw.length > 0) {
                $kflHttp.sendRequest(
                  //php文件用$sql = "select did,name,price,img_sm,material from kf_dish where name like '%$kw%' or material like '%$kw%'" 语句进行模糊查找，正则表达式
                    'data/dish_getbykw.php?kw=' + $scope.inputTxt.kw,
                    function (data) {
                      if (data.length > 0) {
                        $scope.dishList = data;
                      }
                    }
                )
              }
            }
        );

      }
    ])


 app.controller('detailCtrl',
     ['$scope', '$kflHttp', '$stateParams','$ionicPopup',
       function ($scope, $kflHttp, $stateParams,$ionicPopup) {
         //$stateParams接收main页面通过ui-sref="kflDetail({did:dish.did})"传递的参数，打印出来是一个对象，取出参数，用于对表的查询，显示在视图上
         console.log($stateParams);
         $scope.id = $stateParams.did;
         $kflHttp.sendRequest(
             'data/dish_getbyid.php?did=' + $scope.id,
             function (data) {
               console.log(data);
               $scope.dish = data[0];
             }
         );

         //添加到购物车
        $scope.addToCart=function(){
          //发起网络请求
          $kflHttp.sendRequest('data/cart_update.php?uid=1&&did='+$scope.id+'&&count=-1',function(data){
            console.log(data);
            if(data.msg=='succ'){
              $ionicPopup.alert({title:'提示信息',template:'添加成功！'});
            }else{
              $ionicPopup.alert({title:'提示信息',template:'添加失败！'});
            }

          })
        }
       }

     ]);

app.controller('orderCtrl', [
  '$scope', '$stateParams',
  '$httpParamSerializerJQLike',
  '$kflHttp',
  function ($scope, $stateParams,
            $httpParamSerializerJQLike,
            $kflHttp) {
    //接收到购物车传递的参数detail传递来的参数
    console.log($stateParams.detail);
    console.log($stateParams.price);
    console.log($stateParams);

    //定义一个对象，将表单中用户的输入
    // 绑定到对象中的属性
    $scope.order = {
      userid:1,
      cartDetail:$stateParams.detail,
      totalprice:$stateParams.price//其他数据在ng-module中绑定
    };

    $scope.submitOrder = function () {
      //可以通过服务 将对象 直接进行表单序列化
      var params =
        $httpParamSerializerJQLike(
          $scope.order);
      console.log(params);
      //发给服务器
      $kflHttp.sendRequest(
        'data/order_add.php?' + params,
        function (data) {
          console.log(data)
          var result = data[0];
          if (result.msg == 'succ') {
            $scope.result =
              "下单成功，订单编号为" + result.oid;
            /* sessionStorage.setItem(
             'phone',
             $scope.order.userPhone
             )*/
          }
          else {
            $scope.result = "下单失败";
          }
        }
      )
    }
  }
])

//给myOrder创建一个控制器，根据手机号去
//查询所有的订单信息
app.controller('myOrderCtrl',
    ['$scope', '$kflHttp',
      function ($scope, $kflHttp) {
        //读取手机号
        var myPhone = sessionStorage.getItem('phone');
        //发起网络请求
        $kflHttp.sendRequest(
            'data/order_getbyuserid.php?userid=1',
            function (result) {
              console.log(result);
              $scope.orderList = result.data;
            }
        )
      }]
)

//设置页面创建控制器
 app.controller('settingsCtrl',['$scope','$ionicModal',function($scope,$ionicModal){
    $ionicModal.fromTemplateUrl('tpl/myModal.html',{scope:$scope})
               .then(function(modal){
                 $scope.myModal=modal;
               });
     $scope.showCustomModal=function(){
       $scope.myModal.show();
     }
     $scope.hideCustomModal=function(){
       $scope.myModal.hide();
     }
 }]);

//购物车页面创建控制器
 app.controller('cartCtrl',['$scope','$kflHttp',function($scope,$kflHttp){
  //查看购物车
   $scope.cartList=[];
   $scope.isCartEmpty=false;
   $scope.editMsg='编辑';
   $scope.editEnable=true;

     $kflHttp.sendRequest('data/cart_select.php?uid=1',function(result){
       console.log(result);
       $scope.cartList=result.data;
       if($scope.cartList.length==0){
         $scope.isCartEmpty=true;
       }
     });

   //数据保存在cartList中，转化为json字符串，传递给order.html页面
   $scope.jumpToOrder=function(){
     $scope.jump('kflOrder',{  //传递两个参数
       detail:angular.toJson($scope.cartList),
       price:$scope.calSum()
     })
   }


   //编辑
   $scope.toggleEditStatus=function(){
     $scope.editEnable=!$scope.editEnable;//每次调用都改变数值
    if($scope.editEnable==true){
      $scope.editMsg='编辑';
    }else{
      $scope.editMsg='完成';
    }
   }

   //初始化购物车所需要用到的数据
   $kflHttp
     .sendRequest(
     'data/cart_select.php?uid=1',
     function (result) {
       console.log(result);
       $scope.cartList = result.data;
       if($scope.cartList.length == 0)
       {
         $scope.isCartEmpty =true;//显示买买买
       }
     }
   )


   $scope.jumpToOrder = function () {
     $scope.jump(
       'kflOrder',
       {
         detail: angular.toJson($scope.cartList),
         price: $scope.calSum()
       }
     )
     ;
   };

   //添加减少数据封装成一个方法，不需要写两个方法，请求同一个数据
   $scope.changeFromCart =
     //index 下标，count 增加或减少，增加则count=+1，减少则count=-1
     function (index,count) {
       if(count==-1){
         if ($scope.cartList[index].
             dishCount == 1) {
           return
         }
       }

       console.log(1);
       var path =
         'data/cart_update.php?uid=1&did='
         + $scope.cartList[index].did
         + "&count=" + (parseInt($scope.cartList[index].dishCount)+parseInt(count));
       $kflHttp.sendRequest(
         path,
         function (result) {
           console.log(result);
           if (result.msg == 'succ') {

             $scope.cartList[index].dishCount =
               parseInt($scope.cartList[index].dishCount) +parseInt(count);
           }
         }
       )
     };

   //计算合计
   $scope.calSum=function(){
     var totalPrice=0;
     for(var i=0;i<$scope.cartList.length;i++){
       totalPrice+=$scope.cartList[i].dishCount*$scope.cartList[i].price;
     }
     return totalPrice;
   }
 }]);