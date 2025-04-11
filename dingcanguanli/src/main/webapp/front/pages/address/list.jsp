<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isELIgnored="true" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8" />
    <!--通用-->
    <meta name="format-detection" content="telephone=no">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width,minimum-scale=1.0,maximum-scale=1.0">
    <title>配送地址列表页</title>
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <link rel="stylesheet" href="../../layui/css/layui.css">
    <link rel="stylesheet" href="../../xznstatic/css/aos.css" />
    <link rel="stylesheet" href="../../xznstatic/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../../xznstatic/css/idangerous.swiper.css" />
    <link rel="stylesheet" href="../../xznstatic/css/lightbox.css">
    <link rel="stylesheet" href="../../xznstatic/css/app.css" />
    <link rel="stylesheet" href="../../xznstatic/css/apmin.css"/>
    <link rel="stylesheet" type="text/css" href="../../xznstatic/css/iconfont.css">
    <link rel="stylesheet" type="text/css" href="../../xznstatic/css/color.css">
    <link rel="stylesheet" type="text/css" href="../../xznstatic/css/global.css">
    <link rel="stylesheet" type="text/css" href="../../xznstatic/css/page.css">
    <link rel="stylesheet" type="text/css" href="../../xznstatic/css/uzlist.css">
    <link rel="stylesheet" type="text/css" href="../../xznstatic/css/animate.min.css">
    <link rel="stylesheet" type="text/css" href="../../xznstatic/css/fancybox.css" />
    <script type="text/javascript" src="../../xznstatic/js/jquery.min.js"></script>
    <script type="text/javascript" src="../../xznstatic/js/superslide.2.1.1.min.js"></script>
    <script type="text/javascript" src="../../xznstatic/js/wow.min.js"></script>
    <script type="text/javascript" src="../../xznstatic/js/fancybox.js"></script>
    <!-- 样式 -->
    <link rel="stylesheet" href="../../css/style.css"/>
    <!-- 主题（主要颜色设置） -->
    <link rel="stylesheet" href="../../css/theme.css"/>
    <!-- 通用的css -->
    <link rel="stylesheet" href="../../css/common.css"/>
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "../../../resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="../../../resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="../../../resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="../../../resources/ueditor/lang/zh-cn/zh-cn.js"></script>
    <script type="text/javascript">
        var CATID = "0",
                BCID = "0",
                NAVCHILDER = "",
                ONCONTEXT = 0,
                ONCOPY = 0,
                ONSELECT = 0;
    </script>
    <style>

        .header {animation-name: fadeInUp; padding-bottom: 26px;padding-top: 70px;position:relative;border-bottom:1px solid rgba(0,0,0,0.1);margin-bottom:40px;}
		#plheader{ top: 48px;padding-bottom: 40px;width: 220px;position: relative;height: 70px;border-radius: 3px 3px 0px 0px;background-color: var(--publicMainColor);padding-top: 40px !important;}
		.header p.title {color: #fff;font-size: 25px;margin-bottom: 8px;text-align: left;white-space: nowrap;overflow: hidden;margin-left: 31px;font-weight: bold; padding-bottom: 8px;margin-top: 0px;width: 158px;border-bottom: 1px solid rgba(255, 255, 255, 0.16);letter-spacing:1px;}
		#category {padding-top: 136px;margin-left: 0px;padding-bottom: 30px;width: 205px;float: left;padding-left: 15px;text-align: left;margin-top: -120px;background-color: var(--publicMainColor);border-radius: 0px 0px 3px 3px;}
		.header p.subtitle {font-family:HELVETICANEUELTPRO-THEX, "微软雅黑";letter-spacing: 1px;font-size: 15px;display: inline-block;padding-top: 0px;color: #ffffff; margin-top: 0px; margin-right:31px;float: right;overflow: hidden;width: 156px;text-align: left;}
		#category a.active::before {display: none;}
		#category a.active::after {display:none;}
		#category a.active, #category a:hover {background: var(--publicSubColor);color: #FFFFFF;border-color: #838383;transition: 0.3s; transform-origin: bottom;}
		#category li {height:auto;position:relative;float:none; display:block;margin-top:1px;margin-bottom:1px;line-height:43px;border-bottom: 1px solid rgba(255, 255, 255, 0.05);padding-left: 15px;margin-right:16px;transition: all 0.6s cubic-bezier(0.215, 0.61, 0.355, 1) 0s;}
		#category li:last-child { border-bottom:none;}
		#category a { border:0px; background:none; color:#CFDCF9; font-size:14px; position:relative; padding:0;line-height: 42px;height: 42px;}
		#category a::before { content:''; position:absolute; content: '';position: absolute;width: 190px;background-color: #AEAEAF;height: 42px;background: transparent;left: -16px;position: absolute;transition: all 0.6s cubic-bezier(0.215, 0.61, 0.355, 1) 0s; }
		#category a.active::before {display: none;}
		#category li:hover {padding-left:30px;background-color: var(--publicSubColor);transition: all 0.6s cubic-bezier(0.215, 0.61, 0.355, 1) 0s;}
		#category .bbbb, #category li .aaaa {padding-left:30px;background-color: var(--publicSubColor);transition: all 0.6s cubic-bezier(0.215, 0.61, 0.355, 1) 0s;background: var(--publicSubColor);color: #FFFFFF;  transition: 0.3s; transform-origin: bottom;}
		#category li:hover ul li{width: 136px;}
		#category li:hover ul li a{color: rgba(255, 255, 255, 0.45);width: 136px;overflow: hidden;    background-color: rgb(34, 73, 160);    padding-left:0px;}
		#category li ul li:hover a{  padding-left:0px; margin-left: 0px;}
		#category li:hover a{color:#fff}
    </style>
</head>
<body >
<div id="app">

    <div class="am-add">
        <div class="swiper-container ng-swiper">
            <div class="swiper-wrapper">
                <div class="swiper-slide" v-for="(item,index) in swiperList" v-bind:key="index">
                    <a href="#">
                        <div class="swiper-slide"><img :src="item.img" style="width: 100%;height:400px "></div>
                    </a>
                </div>
            </div>
            <div class="swiper-pagination"></div>
            <div class="swiper-button-prev ng-swiper-ovleft"><img src="../../xznstatic/img/snne1.png"/></div>
            <div class="swiper-button-next ng-swiper-ovright"><img src="../../xznstatic/img/snne2.png"/></div>
        </div>
    </div>
    <!-- 新增修改模态框 -->
    <div class="modal fade" id="addOrUpdateAddressModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog" style="z-index: 3000">
            <div class="modal-content">
                <%-- 模态框标题--%>
                <div class="modal-header">
                    <h5 class="modal-title"  id="addressTitle" >标题</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <%-- 模态框内容 --%>
            <form class="layui-form layui-form-pane" lay-filter="myForm" id ="myForm">
                <div class="modal-body">
                        <!-- 当前表的 -->
                        <input type="hidden"  id="id" name="id"/>
                        <div class="layui-form-item" pane>
                            <label class="layui-form-label">收货人：</label>
                            <div class="layui-input-block">
                                <input  type="text" name="addressName" id="addressName" placeholder="收货人" lay-verify="required" autocomplete="off"
                                       class="layui-input">
                            </div>
                        </div>

                        <!-- 手机号 -->
                        <div class="layui-form-item" pane>
                            <label class="layui-form-label">电话：</label>
                            <div class="layui-input-inline">
                                <input  type="text" name="addressPhone" id="addressPhone"  lay-verify="phone|required"   placeholder="电话" autocomplete="off" class="layui-input">
                            </div>
                        </div>
                        <div class="layui-form-item" pane>
                            <label class="layui-form-label">地址：</label>
                            <div class="layui-input-block">
                                <input  type="text" name="addressDizhi" id="addressDizhi" placeholder="地址" lay-verify="required" autocomplete="off"
                                       class="layui-input">
                            </div>
                        </div>

                        <div class="layui-form-item" pane>
                            <label class="layui-form-label">是否默认地址：</label>
                            <div class="layui-input-block">
                                <select name="isdefaultTypes" id="isdefaultTypes" lay-filter="isdefaultTypes">
                                    <option v-for="item in isdefaultTypesList" :value="item.codeIndex" :key="item.codeIndex">{{ item.indexName }}</option>
                                </select>
                            </div>
                        </div>
                </div>
                <%-- 模态框按钮 --%>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                    <button class="btn btn-theme btn-submit" lay-submit lay-filter="addOrUpdateAddress">提交</button>
                </div>
            </form>
            </div>
        </div>
    </div>



    <div class="center-container">
        <!-- 个人中心菜单 config.js-->
        <div style=" width:auto;">
            <div class="header" id="plheader" style="width: 205px">
                <p class="title">配送地址</p>
                <p class="subtitle">USER / ADDRESS</p>
            </div>
            <ul id="category" style="padding-top: 180px;">
                <li v-for="(item,index) in centerMenu" v-bind:key="index" :class="item.url=='../address/list.jsp'?'bbbb':''">
                    <a :href="'javascript:jump(\''+item.url+'\')'" style="color:#FFFFFF;" :class="item.url=='../address/list.jsp'?'aaaa':''">{{item.name}}</a>
                </li>
            </ul>
        </div>
        <!-- 个人中心菜单 -->
        <div class="right-container" style="padding-top: 0;">
            <div class="btn-container" style="margin-bottom: 0;">
                <button @click="addAddress()"type="button" class="layui-btn layui-btn-lg btn-theme">
                    <i class="layui-icon">&#xe654;</i> 添加新地址
                </button>
            </div>
            <table class="layui-table" lay-skin="nob">
                <thead>
                <tr>
                    <th>主键 </th>
                    <th>收货人 </th>
                    <th>电话 </th>
                    <th>地址 </th>
                    <th>是否默认地址 </th>
                    <th>操作</th>
                </tr>
                </thead>
                <tbody>
                <tr v-for="(item,index) in dataList" v-bind:key="index">

                    <th style="width: 60px;">{{item.id}}</th>
                    <th style="width: 80px;">{{item.addressName}}</th>
                    <th style="width: 100px;">{{item.addressPhone}}</th>
                    <th>{{item.addressDizhi}}</th>
                    <th style="width: 115px;">{{item.isdefaultValue}}</th>
                    <td style="width: 150px;">
                        <button @click="updateeAddress(item.id)" type="button"
                                class="layui-btn layui-btn-radius layui-btn-sm layui-btn-warm">
                            <i class="layui-icon">&#xe642;</i> 修改
                        </button>
                        <button @click="deleteClick(item.id)" type="button"
                                class="layui-btn layui-btn-radius layui-btn-sm btn-theme">
                            <i class="layui-icon">&#xe640;</i> 删除
                        </button>
                    </td>
                </tr>
                </tbody>
            </table>
            <div class="pager" id="pager"></div>
        </div>
    </div></div>


<script src="../../xznstatic/js/bootstrap.min.js" type="text/javascript" charset="utf-8"></script>
<script src="../../layui/layui.js"></script>
<script src="../../js/vue.js"></script>
<!-- 引入element组件库 -->
<script src="../../xznstatic/js/element.min.js"></script>
<!-- 引入element样式 -->
<link rel="stylesheet" href="../../xznstatic/css/element.min.css">
<script src="../../js/config.js"></script>
<script src="../../modules/config.js"></script>
<script src="../../js/utils.js"></script>

<script>
    var vue = new Vue({
        el: '#app',
        data: {
            id:null,
            detail: {},
            swiperList: [],//轮播图
            dataList: [],//数据
        // 当前表字典表数据
            isdefaultTypesList : [],
            addressTypes: 0,//类型
            limit: 8,
            projectName: projectName,//项目名
            centerMenu: centerMenu

        },
        updated: function() {
            layui.form.render(null, 'myForm');
        },
        filters: {
            //把字符串去除无用字符 如果字段长度大于60  就截取到60
            subString: function(val) {
                if (val) {
                    val = val.replace(/<[^<>]+>/g, '').replace(/undefined/g, '');
                    if (val.length > 60) {
                        val = val.substring(0, 60);
                        val+='...';
                    }

                    return val;
                }
                return '';
            }
        },
        computed: {
        },
        methods: {
            jump(url) {
                jump(url);
            }
            ,jumpCheck(url,check1,check2) {
                if(check1 == "2" || check1 == 2){//级联表的逻辑删除字段[1:未删除 2:已删除]
                    layui.layer.msg("已经被删除", {
                        time: 2000,
                        icon: 2
                    });
                    return false;
                }
                if(check2 == "2"  || check2 == 2){//是否下架[1:上架 2:下架]
                    layui.layer.msg("已经下架", {
                        time: 2000,
                        icon: 2
                    });
                    return false;
                }
                this.jump(url);
            }
			,deleteClick(id) {
				layui.layer.confirm('是否确认删除？', {
					btn: ['删除', '取消'] //按钮
				}, function() {
					layui.http.requestJson(`address/delete`, 'post', [id], function(res) {
						layer.msg('删除成功', {
							time: 2000,
							icon: 6
						}, function(res) {
							window.location.reload();
						});
					})
				});
			}
			,updateeAddress(id) {
				$("#addressTitle").text("修改");
				$("#myForm")[0].reset();
				layui.form.render(null, 'myForm');
				layui.http.request(`address/info/`+id, 'get', {}, function(res) {
					layui.form.val("myForm", res.data);
					layui.form.render(null, 'myForm');
				});
				$('#addOrUpdateAddressModal').modal('show');//打开模态框
			}
			,addAddress() {
                $("#addressTitle").text("新增");
				$("#myForm")[0].reset();
				layui.form.render(null, 'myForm');
				$('#addOrUpdateAddressModal').modal('show');//打开模态框
			}

        }
    });

    layui.use(['layer', 'element', 'carousel', 'laypage','form', 'http', 'jquery', 'laydate', 'tinymce'], function() {
        var layer = layui.layer;
        var element = layui.element;
        var carousel = layui.carousel;
        var laypage = layui.laypage;
        var http = layui.http;
        var form = layui.form;
        var laydate = layui.laydate;
        var tinymce = layui.tinymce;
        window.jQuery = window.$ = jquery = layui.jquery;

        var limit = 8;

        // 获取轮播图 数据
        http.request('config/list', 'get', {
            page: 1,
            limit: 5
        }, function(res) {
            if (res.data.list.length > 0) {
                let swiperList = [];
                res.data.list.forEach(element => {
                    if (element.value != null) {
                        swiperList.push({
                            img: element.value
                        });
                    }
                });
                vue.swiperList = swiperList;
                vue.$nextTick(()=>{
                    var mySwiper = new Swiper('.ng-swiper', {
                        speed: 400,
                        spaceBetween: 100,
                        pagination: '.ng-swiper .swiper-pagination',
                        autoplay : 5000,
                        loop : true,
                        autoplayDisableOnInteraction : false,
                        calculateHeight : true
                    });
                    $(".ng-swiper-ovleft").bind("click",function (){ mySwiper.swipePrev();});
                    $(".ng-swiper-ovright").bind("click",function (){ mySwiper.swipeNext();});
                });
            }
        });
        // 查询当前字典表相关
            // 是否默认地址的查询和初始化
        isdefaultTypesSelect();
    // 当前表的字典表
        // 是否默认地址的查询
        function isdefaultTypesSelect() {
            http.request("dictionary/page?page=1&limit=100&sort=&order=&dicCode=isdefault_types", 'get', {}, function (res) {
                if(res.code == 0){
                    vue.isdefaultTypesList = res.data.list;
                }
            });
        }




		// 获取列表数据
		http.request('address/page', 'get', {
			page: 1,
			limit: limit,
			yonghu: localStorage.getItem('userid')
		}, function(res) {
			vue.dataList = res.data.list
			// 分页
			laypage.render({
				elem: 'pager',
				count: res.data.total,
				limit: limit,
				jump: function(obj, first) {
					//首次不执行
					if (!first) {
						http.request('address/list', 'get', {
							page: obj.curr,
							limit: obj.limit,
							yonghu: localStorage.getItem('userid')
						}, function(res) {
							vue.dataList = res.data.list
						})
					}
				}
			});
		})

		// 提交
        form.on('submit(addOrUpdateAddress)', function (data) {
            data = data.field;
            if (data.id == null || data.id == ""){
                data["yonghuId"]= localStorage.getItem("userid");
                http.requestJson('address/add', 'post', data, function (res) {
                    layer.msg('新增成功', {
                        time: 2000,
                        icon: 6
                    }, function () {
                        back();
                    });
                });
            }else{
                http.requestJson('address/update', 'post', data, function (res) {
                    layer.msg('修改成功', {
                        time: 2000,
                        icon: 6
                    }, function () {
                        back();
                    });
                });
            }
            return false
        });
    });
</script>

<script src="../../xznstatic/js/idangerous.swiper.min.js"></script>
<script src="../../xznstatic/js/aos.js" type="text/javascript" charset="utf-8"></script>
<script src="../../xznstatic/js/jquery.superslide.2.1.1.js"></script>
<script src="../../xznstatic/js/app.js"></script>
<script src="../../xznstatic/js/lightbox.js"></script>

<script>
    window.xznResize = function() {
        var mySwiper2 = new Swiper('.ng-inzep',{
            calculateHeight : true,
            loop : true,
            paginationClickable :true,
            pagination: ".ng-inzep .swiper-pagination"
        });

        $(document).bind("scroll",function (){
            if($(".ng-swip-porlist").length > 0){
                if($(window).width() > 769){
                    mySwiper2.params.slidesPerView = 4;
                    mySwiper3.params.slidesPerView = 4;
                }else if($(window).width() < 769){
                    if($(window).width() < 480){
                        mySwiper2.params.slidesPerView = 2;
                        mySwiper3.params.slidesPerView = 2;
                    }else{
                        mySwiper2.params.slidesPerView = 3;
                        mySwiper3.params.slidesPerView = 3;
                    }
                }
            }
        });

        $(window).bind("resize", function () {
            // 强制关闭导航
            if ($(window).width() > 992) { $(".ipad-nav").slideUp(); };

            if ($(".ng-swip-porlist").length > 0) {
                if ($(window).width() > 769) {
                    mySwiper2.params.slidesPerView = 4;
                    mySwiper3.params.slidesPerView = 4;
                } else if ($(window).width() < 769) {
                    if ($(window).width() < 480) {
                        mySwiper2.params.slidesPerView = 2;
                        mySwiper3.params.slidesPerView = 2;
                    } else {
                        mySwiper2.params.slidesPerView = 3;
                        mySwiper3.params.slidesPerView = 3;
                    }
                }
            }

            Spirit_dynamicBG($(".ng-inswbg"), 1600, 616, $(".ng-inswbg"));
            Spirit_CallBack($(".ng-porlist-doc>a"), 280, 200);
            Spirit_CallBack($(".ng-incontlst-img"), 368, 240);
            Spirit_CallBack($(".ng-inzep-ims"), 400, 270);
            Spirit_CallBack($(".ng-isenst-img"), 368, 240);
            Spirit_CallBack($(".ng-prslist-img"), 100, 100);
            Spirit_CallBack($(".ng-vrslist-img"), 260, 170);
            Spirit_CallBack($(".ng-newbve-img-ikk"), 368, 240);

            $(".ng-subc-swiper").css({ "height": $(".ng-subc-swiper").width() });

            if ($(window).width() < 640) {
                $(".am-inside-swf").css({
                    "min-height": $(window).height() - 60
                });
            } else {
                $(".am-inside-swf").css({
                    "min-height": "auto"
                });
            }
        }).resize();
    }
</script>
</body>
</html>
