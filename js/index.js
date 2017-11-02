

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
        .state('diary',{//个人日记
            url:'/diary',
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
        })
        //学无止境配置路由
        //  1.seo优化，点击跳转到seo.html
        .state('seo',{
            url:'/seo',
            templateUrl:'tpl/studiness/seo.html'
        })
        //      1.1 SEO常见问题
        .state('seoProblem',{
            url:'/seoProblem',
            templateUrl:'tpl/studiness/seo/seoProblem.html',
            parent:'seo'
        })
        //      1.2 SEO基础优化
        .state('seoBasis',{
            url:'/seoBasis',
            templateUrl:'tpl/studiness/seo/seoBasis.html',
            parent:'seo'
        })
        //      1.3 SEO优化进阶
        .state('seoOptimize',{
            url:'/seoOptimize',
            templateUrl:'tpl/studiness/seo/seoOptimize.html',
            parent:'seo'
        })
        //      1.4 SEO实战案例
        .state('seoProject',{
            url:'/seoProject',
            templateUrl:'tpl/studiness/seo/seoProject.html',
            parent:'seo'
        })
        //  2.web前端
        .state('webFrontEnd',{
            url:'/webFrontEnd',
            templateUrl:'tpl/studiness/webFrontEnd.html'
        })
        //      2.1 网页制作基础
        .state('webFrontEndBasis',{
            url:'/webFrontEndBasis',
            templateUrl:'tpl/studiness/webFrontEnd/webFrontEndBasis.html',
            parent:'webFrontEnd'
        })
        //      2.2 HTML/CSS3
        .state('webFrontEndHC',{
            url:'/webFrontEndHC',
            templateUrl:'tpl/studiness/webFrontEnd/webFrontEndHC.html',
            parent:'webFrontEnd'
        })
        //      2.3 javascript/jQuery
        .state('webFrontEndJS',{
            url:'/webFrontEndJS',
            templateUrl:'tpl/studiness/webFrontEnd/webFrontEndJS.html',
            parent:'webFrontEnd'
        })
        //      2.4 网站实战案例
        .state('webFrontEndProject',{
            url:'/webFrontEndProject',
            templateUrl:'tpl/studiness/webFrontEnd/webFrontEndProject.html',
            parent:'webFrontEnd'
        })
        //  程序人生
        .state('coder',{
            url:'/coder',
            templeteUrl:'tpl/studiness/coder.html',
            parent:'study'
        })
        //网络营销
        .state('netWorkMarketing',{
            url:'/netWorkMarketing',
            templateUrl:'tpl/studiness/netWorkMarketing.html',
            parent:'study'
        })
        //留言板
        //     登录
        .state('login',{
            url:'/login',
            templateUrl:'tpl/message/login.html',
            parent:'message'
        })
        .state('register',{
            url:'/register',
            templateUrl:'tpl/message/register.html',
            parent:'message'
        });
        $urlRouterProvider.otherwise('/main')//其他
}]);

//创建控制器，封装了跳转的方法
app.controller('parentCtrl', ['$scope', '$state','$zmBlogHttp',function ($scope, $state,$zmBlogHttp) {
    //$state.go('触发的状态名字',{参数名字:值});
            $scope.jump = function (desState,arg) {
                $state.go(desState,arg);
            };
    //个人日记 diary
            $scope.toDiary=function(){
                $scope.diaryList=[];
                $scope.jump('diary');
                $zmBlogHttp.sendRequest('data/diary.php',function(data){
                    $scope.diaryList=data;
                    console.log($scope.diaryList);
        })
    }
        }
    ]);

//创建头部control
app.controller('headerCtrl',['$scope',function($scope){
    $scope.nickname=window.sessionStorage['user_nickname'];
}]);
//给网站模板创建一个控制器webTemplateCtrl
app.controller('webTemplateCtrl',['$scope','$zmBlogHttp',function($scope,$zmBlogHttp){
    //1. 向个人博客模板发送请求
    $scope.toWebPersonal=function(){
        $scope.webPersonalList=[];
        $scope.jump('webPersonal');
        $zmBlogHttp.sendRequest('data/webTemplate/webPersonal.php',function(data){
            $scope.webPersonalList=data;
        });
    };

    //2.向wordPress发送请求
    $scope.toWordPress=function(){
        $scope.wordPressList=[];
        $scope.jump('wordPress');
        $zmBlogHttp.sendRequest('data/webTemplate/wordPress.php',function(data){
            $scope.wordPressList=data;
            console.log($scope.wordPressList);
        });
    };

    //3.向企业网站模板发送请求
    $scope.toCompany=function(){
        $scope.companyList=[];
        $scope.jump('company');
        $zmBlogHttp.sendRequest('data/webTemplate/company.php',function(data){
            $scope.companyList=data;
            console.log($scope.companyList);
        });
    };

}]);

//学无止境
//  >>1.seo创建控制器
app.controller('seoCtrl',['$scope','$zmBlogHttp',function($scope,$zmBlogHttp){
    // 1.1 向SEO常见问题发送请求
    $scope.toSeoProblem=function(){
        $scope.seoProblemList=[];
        $scope.jump('seoProblem');
        $zmBlogHttp.sendRequest('data/studiness/seo/seoProblem.php',function(data){
            $scope.seoProblemList=data;
            console.log($scope.seoProblemList);
        });
    };
    // 1.2 向SEO基础优化发送请求
    $scope.toSeoBasis=function(){
        $scope.seoBasisList=[];
        $scope.jump('seoBasis');
        $zmBlogHttp.sendRequest('data/studiness/seo/seoBasis.php',function(data){
            $scope.seoBasisList=data;
            console.log($scope.seoBasisList);
        });
    };
    // 1.3 向SEO优化进阶发送请求
    $scope.toSeoOptimize=function(){
        $scope.seoOptimizeList=[];
        $scope.jump('seoOptimize');
        $zmBlogHttp.sendRequest('data/studiness/seo/seoOptimize.php',function(data){
            $scope.seoOptimizeList=data;
            console.log($scope.seoOptimizeList);
        });
    };
    // 1.4 向SEO实战案例发送请求
    $scope.toSeoProject=function(){
        $scope.seoProjectList=[];
        $scope.jump('seoProject');
        $zmBlogHttp.sendRequest('data/studiness/seo/seoProject.php',function(data){
            $scope.seoProjectList=data;
            console.log($scope.seoProjectList);
        });
    };
}]);

//  >>2.webFrontEnd创建控制器
app.controller('webCtrl',['$scope','$zmBlogHttp',function($scope,$zmBlogHttp){
    // 2.1 向网页制作基础发送请求
    $scope.toWebFrontEndBasis=function(){
        $scope.webFrontEndBasisList=[];
        $scope.jump('webFrontEndBasis');
        $zmBlogHttp.sendRequest('data/studiness/webFrontEnd/webFrontEndBasis.php',function(data){
            $scope.webFrontEndBasisList=data;
            console.log($scope.webFrontEndBasisList);
        });
    };
    // 2.2 向HTML/CSS3发送请求
    $scope.toWebFrontEndHC=function(){
        $scope.webFrontEndHCList=[];
        $scope.jump('webFrontEndHC');
        $zmBlogHttp.sendRequest('data/studiness/webFrontEnd/webFrontEndHC.php',function(data){
            $scope.webFrontEndHCList=data;
            console.log($scope.webFrontEndHCList);
        });
    };
    // 2.3 向javascript/jQuery发送请求
    $scope.toWebFrontEndJS=function(){
        $scope.webFrontEndJSList=[];
        $scope.jump('webFrontEndJS');
        $zmBlogHttp.sendRequest('data/studiness/webFrontEnd/webFrontEndJS.php',function(data){
            $scope.webFrontEndJSList=data;
            console.log($scope.webFrontEndJSList);
        });
    };
    // 2.4 向网站实战案例发送请求
    $scope.toWebFrontEndProject=function(){
        $scope.webFrontEndProjectList=[];
        $scope.jump('webFrontEndProject');
        $zmBlogHttp.sendRequest('data/studiness/webFrontEnd/webFrontEndProject.php',function(data){
            $scope.webFrontEndProjectList=data;
            console.log($scope.webFrontEndProjectList);
        });
    };
}]);

// 给studiness创建控制器
app.controller('studinessCtrl',['$scope','$zmBlogHttp',function($scope,$zmBlogHttp){
    //程序人生
    $scope.toCoder=function(){
        $scope.coderList=[];
        $scope.jump('coder');
        $zmBlogHttp.sendRequest('data/studiness/coder.php',function(data){
            $scope.coderList=data;
            console.log($scope.coderList);
        })
    };

    //网络营销
    $scope.toNetWorkMarketing=function(){
        $scope.netWorkMarkingList=[];
        $scope.jump('netWorkMarketing');
        $zmBlogHttp.sendRequest('data/studiness/netWorkMarketing.php',function(data){
            $scope.netWorkMarkingList=data;
            console.log($scope.netWorkMarkingList);
        })
    }
}]);

//留言板 message

// 发表留言，如果sessionStorage['loginName']或者localStorage['loginName']里面有数值则直接将内容存入数据库，否则弹出登录或注册页面
// $zmBlogHttp里面封装的是get方法，此处用post方法，所以单独写
app.controller('messageCtrl',['$scope','$http',function($scope,$http){
    // isModalShow控制模态框的状态
    $scope.isModalShow=false;
    // 判断是否登录，如果没有登录则弹出登录页面，同时将isModalShow的值传递给自控制器registerCtrl和loginCtrl
    $scope.sendMessage=function(){
        // 如果有一个是空的就跳到注册登录页面
        if(!sessionStorage['user_nickname']||!sessionStorage['user_email']||!sessionStorage['user_pwd']){
            $scope.isModalShow=true;
            console.log(sessionStorage['loginName']);
            console.log(localStorage['loginName']);
        }else{
            //否则不出现注册登录窗口
            $scope.isModalShow=false;
            $scope.msgUserEmail=window.sessionStorage['user_email'];
            $scope.msgNickname=sessionStorage['user_nickname'];
            console.log(window.sessionStorage['user_email']);
            // 实现发表留言功能
            var xhr=new XMLHttpRequest();
            xhr.onreadystatechange=function(){
                if(xhr.readyState===4&&xhr.status===200){
                    $scope.msg=xhr.responseText;
                    // 将json字符串转为数组对象
                    $scope.data=angular.fromJson($scope.msg);
                    console.log($scope.data);
                }
            };
            xhr.open('POST','data/message/message.php',true);
            xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
            xhr.send("msgContent="+$scope.message+"&msgUserEmail="+$scope.msgUserEmail);
        }
    };

    //点击关闭模态框
    $scope.close=function(){
        $scope.isModalShow=false;
    };

    //导航中点击出现对应的页面,并且出现激活的样式
    $scope.activeLi=function(url){
        $scope.jump(url);
        var modalNav=document.getElementById('modalNav');
        var lis=modalNav.children;
        for(var i=0;i<lis.length;i++){
            var a=lis[i].children;
            a.className='';
            console.log(a);
        }
        this.className='activeClick';
    };
}]);
//注册页面创建控制器(一定要创建，不能公用messageCtrl，否则取不到值)，接受和发送messageCtrl中的isModalShow 数据
app.controller('registerCtrl',['$scope','$ionicLoading',function($scope,$ionicLoading){
    //点击注册按钮提交信息，并通过邮箱验证用户名是否存在,可以做成监听，就不用点击的时候验证了，随时验证
    $scope.register=function(){
        var xhr=new XMLHttpRequest();
        xhr.onreadystatechange=function(){
            if(xhr.readyState===4&&xhr.status===200){
                $scope.msg=xhr.responseText;
                //console.log($scope.msg);
                // 将json字符串转为数组对象
                $scope.data=angular.fromJson($scope.msg)[0];
                //console.log($scope.data);
                // 将数据存入sessionStorage
                sessionStorage['user_nickname']=$scope.data.user_nickname;
                sessionStorage['user_email']=$scope.data.user_email;
                sessionStorage['user_pwd']=$scope.data.user_pwd;
                //如果注册成功,将isModalShow中的值修改为false 隐藏注册页面，发送给父控制器
                // if($scope.data.user_email){
                //     var isShow=document.getElementsByClassName('modalOutermost');
                //     isShow.style.display='none';
                // }
            }
        };
        xhr.open('POST','data/message/register.php',true);
        xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
        xhr.send("nickname="+$scope.nickname+"&pwd="+$scope.pwd+"&email="+$scope.email+"&website="+$scope.website+"&isRemember="+$scope.isRemember);
    }

}]);

app.controller('loginCtrl',['$scope',function($scope){

}]);












