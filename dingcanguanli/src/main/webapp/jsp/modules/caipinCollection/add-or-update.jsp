<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
    <%@ include file="../../static/head.jsp" %>
    <link href="http://www.bootcss.com/p/bootstrap-datetimepicker/bootstrap-datetimepicker/css/datetimepicker.css"
          rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap-select.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" charset="utf-8">
        window.UEDITOR_HOME_URL = "${pageContext.request.contextPath}/resources/ueditor/"; //UEDITOR_HOME_URL、config、all这三个顺序不能改变
    </script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/ueditor.all.min.js"></script>
    <script type="text/javascript" charset="utf-8"
            src="${pageContext.request.contextPath}/resources/ueditor/lang/zh-cn/zh-cn.js"></script>
</head>
<style>
    .error {
        color: red;
    }
</style>
<body>
<!-- Pre Loader -->
<div class="loading">
    <div class="spinner">
        <div class="double-bounce1"></div>
        <div class="double-bounce2"></div>
    </div>
</div>
<!--/Pre Loader -->
<div class="wrapper">
    <!-- Page Content -->
    <div id="content">
        <!-- Top Navigation -->
        <%@ include file="../../static/topNav.jsp" %>
        <!-- Menu -->
        <div class="container menu-nav">
            <nav class="navbar navbar-expand-lg lochana-bg text-white">
                <button class="navbar-toggler" type="button" data-toggle="collapse"
                        data-target="#navbarSupportedContent"
                        aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="ti-menu text-white"></span>
                </button>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul id="navUl" class="navbar-nav mr-auto">

                    </ul>
                </div>
            </nav>
        </div>
        <!-- /Menu -->
        <!-- Breadcrumb -->
        <!-- Page Title -->
        <div class="container mt-0">
            <div class="row breadcrumb-bar">
                <div class="col-md-6">
                    <h3 class="block-title">编辑菜品收藏</h3>
                </div>
                <div class="col-md-6">
                    <ol class="breadcrumb">
                        <li class="breadcrumb-item">
                            <a href="${pageContext.request.contextPath}/index.jsp">
                                <span class="ti-home"></span>
                            </a>
                        </li>
                        <li class="breadcrumb-item">菜品收藏管理</li>
                        <li class="breadcrumb-item active">编辑菜品收藏</li>
                    </ol>
                </div>
            </div>
        </div>
        <!-- /Page Title -->

        <!-- /Breadcrumb -->
        <!-- Main Content -->
        <div class="container">

            <div class="row">
                <!-- Widget Item -->
                <div class="col-md-12">
                    <div class="widget-area-2 lochana-box-shadow">
                        <h3 class="widget-title">菜品收藏信息</h3>
                        <form id="addOrUpdateForm">
                            <div class="form-row">
                            <!-- 级联表的字段 -->
                                    <div class="form-group col-md-6 aaaaaa caipin">
                                        <label>菜品</label>
                                        <div>
                                            <select style="width: 450px" id="caipinSelect" name="caipinSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 caipin">
                                        <label>菜品名称</label>
                                        <input style="width: 450px" id="caipinName" name="caipinName" class="form-control"
                                               placeholder="菜品名称" readonly>
                                    </div>
                                    <div class="form-group col-md-6 caipin">
                                        <label>菜品照片</label>
                                        <img id="caipinPhotoImg" src="" width="100" height="100">
                                    </div>
                                    <div class="form-group col-md-6 caipin">
                                        <label>菜品类型</label>
                                        <input style="width: 450px" id="caipinValue" name="caipinValue" class="form-control"
                                               placeholder="菜品类型" readonly>
                                    </div>
                                    <div class="form-group col-md-6 aaaaaa yonghu">
                                        <label>用户</label>
                                        <div>
                                            <select style="width: 450px" id="yonghuSelect" name="yonghuSelect"
                                                    class="selectpicker form-control"  data-live-search="true"
                                                    title="请选择" data-header="请选择" data-size="5" data-width="650px">
                                            </select>
                                        </div>
                                    </div>
                                    <div class="form-group col-md-6 yonghu">
                                        <label>用户姓名</label>
                                        <input style="width: 450px" id="yonghuName" name="yonghuName" class="form-control"
                                               placeholder="用户姓名" readonly>
                                    </div>
                            <!-- 当前表的字段 -->
                                    <input id="updateId" name="id" type="hidden">
                                <input id="caipinId" name="caipinId" type="hidden">
                                <input id="yonghuId" name="yonghuId" type="hidden">
                                    <div class="form-group col-md-6 caipinCollectionTypesDiv">
                                        <label>类型</label>
                                        <select style="width: 450px" id="caipinCollectionTypesSelect" name="caipinCollectionTypes" class="form-control">
                                        </select>
                                    </div>
                                    <div class="form-group col-md-12 mb-3">
                                        <button id="submitBtn" type="button" class="btn btn-primary btn-lg">提交</button>
                                        <button id="exitBtn" type="button" class="btn btn-primary btn-lg">返回</button>
                                    </div>
                            </div>
                        </form>
                    </div>
                </div>
                <!-- /Widget Item -->
            </div>
        </div>
        <!-- /Main Content -->
    </div>
    <!-- /Page Content -->
</div>
<!-- Back to Top -->
<a id="back-to-top" href="#" class="back-to-top">
    <span class="ti-angle-up"></span>
</a>
<!-- /Back to Top -->
<%@ include file="../../static/foot.jsp" %>
<script src="${pageContext.request.contextPath}/resources/js/vue.min.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.ui.widget.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.fileupload.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/jquery.form.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/jquery.validate.min.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/messages_zh.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/validate/card.js"></script>
<script type="text/javascript" charset="utf-8"
        src="${pageContext.request.contextPath}/resources/js/datetimepicker/bootstrap-datetimepicker.min.js"></script>
<script type="text/javascript" charset="utf-8"
                 src="${pageContext.request.contextPath}/resources/js/bootstrap-select.js"></script>
<script src="${pageContext.request.contextPath}/resources/js/laydate.js"></script>
<script>
    <%@ include file="../../utils/menu.jsp"%>
    <%@ include file="../../static/setMenu.js"%>
    <%@ include file="../../utils/baseUrl.jsp"%>

    var tableName = "caipinCollection";
    var pageType = "add-or-update";
    var updateId = "";
    var crossTableId = -1;
    var crossTableName = '';
    var ruleForm = {};
    var crossRuleForm = {};


    // 下拉框数组
        <!-- 当前表的下拉框数组 -->
    var caipinCollectionTypesOptions = [];
        <!-- 级联表的下拉框数组 -->
    var caipinOptions = [];
    var yonghuOptions = [];

    var ruleForm = {};


    // 文件上传
    function upload() {

        <!-- 当前表的文件上传 -->

    }

    // 表单提交
    function submit() {
        if (validform() == true && compare() == true) {
            let data = {};
            getContent();
            if(window.sessionStorage.getItem('role') != '菜品'){//当前登录用户不为这个
                if($("#caipinId") !=null){
                    var caipinId = $("#caipinId").val();
                    if(caipinId == null || caipinId =='' || caipinId == 'null'){
                        alert("菜品不能为空");
                        return;
                    }
                }
            }
            if(window.sessionStorage.getItem('role') != '用户'){//当前登录用户不为这个
                if($("#yonghuId") !=null){
                    var yonghuId = $("#yonghuId").val();
                    if(yonghuId == null || yonghuId =='' || yonghuId == 'null'){
                        alert("用户不能为空");
                        return;
                    }
                }
            }
            let value = $('#addOrUpdateForm').serializeArray();
            $.each(value, function (index, item) {
                data[item.name] = item.value;
            });
            let json = JSON.stringify(data);
            var urlParam;
            var successMes = '';
            if (updateId != null && updateId != "null" && updateId != '') {
                urlParam = 'update';
                successMes = '修改成功';
            } else {
                urlParam = 'save';
                    successMes = '添加成功';

            }
            httpJson("caipinCollection/" + urlParam, "POST", data, (res) => {
                if(res.code == 0){
                    window.sessionStorage.removeItem('addcaipinCollection');
                    window.sessionStorage.removeItem('updateId');
                    let flag = true;
                    if (flag) {
                        alert(successMes);
                    }
                    if (window.sessionStorage.getItem('onlyme') != null && window.sessionStorage.getItem('onlyme') == "true") {
                        window.sessionStorage.removeItem('onlyme');
                        window.sessionStorage.setItem("reload","reload");
                        window.parent.location.href = "${pageContext.request.contextPath}/index.jsp";
                    } else {
                        window.location.href = "list.jsp";
                    }
                }
            });
        } else {
            alert("表单未填完整或有错误");
        }
    }

    // 查询列表
        <!-- 查询当前表的所有列表 -->
        function caipinCollectionTypesSelect() {
            //填充下拉框选项
            http("dictionary/page?page=1&limit=100&sort=&order=&dicCode=caipin_collection_types", "GET", {}, (res) => {
                if(res.code == 0){
                    caipinCollectionTypesOptions = res.data.list;
                }
            });
        }
        <!-- 查询级联表的所有列表 -->
        function caipinSelect() {
            //填充下拉框选项
            http("caipin/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    caipinOptions = res.data.list;
                }
            });
        }

        function caipinSelectOne(id) {
            http("caipin/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                caipinShowImg();
                caipinShowVideo();
                caipinDataBind();
            }
        });
        }
        function yonghuSelect() {
            //填充下拉框选项
            http("yonghu/page?page=1&limit=100&sort=&order=", "GET", {}, (res) => {
                if(res.code == 0){
                    yonghuOptions = res.data.list;
                }
            });
        }

        function yonghuSelectOne(id) {
            http("yonghu/info/"+id, "GET", {}, (res) => {
                if(res.code == 0){
                ruleForm = res.data;
                yonghuShowImg();
                yonghuShowVideo();
                yonghuDataBind();
            }
        });
        }



    // 初始化下拉框
    <!-- 初始化当前表的下拉框 -->
        function initializationCaipincollectiontypesSelect(){
            var caipinCollectionTypesSelect = document.getElementById('caipinCollectionTypesSelect');
            if(caipinCollectionTypesSelect != null && caipinCollectionTypesOptions != null  && caipinCollectionTypesOptions.length > 0 ){
                for (var i = 0; i < caipinCollectionTypesOptions.length; i++) {
                    caipinCollectionTypesSelect.add(new Option(caipinCollectionTypesOptions[i].indexName,caipinCollectionTypesOptions[i].codeIndex));
                }
            }
        }

        function initializationcaipinSelect() {
            var caipinSelect = document.getElementById('caipinSelect');
            if(caipinSelect != null && caipinOptions != null  && caipinOptions.length > 0 ) {
                for (var i = 0; i < caipinOptions.length; i++) {
                        caipinSelect.add(new Option(caipinOptions[i].caipinName, caipinOptions[i].id));
                }

                $("#caipinSelect").change(function(e) {
                        caipinSelectOne(e.target.value);
                });
            }

        }

        function initializationyonghuSelect() {
            var yonghuSelect = document.getElementById('yonghuSelect');
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                        yonghuSelect.add(new Option(yonghuOptions[i].yonghuName, yonghuOptions[i].id));
                }

                $("#yonghuSelect").change(function(e) {
                        yonghuSelectOne(e.target.value);
                });
            }

        }



    // 下拉框选项回显
    function setSelectOption() {

        <!-- 当前表的下拉框回显 -->

        var caipinCollectionTypesSelect = document.getElementById("caipinCollectionTypesSelect");
        if(caipinCollectionTypesSelect != null && caipinCollectionTypesOptions != null  && caipinCollectionTypesOptions.length > 0 ) {
            for (var i = 0; i < caipinCollectionTypesOptions.length; i++) {
                if (caipinCollectionTypesOptions[i].codeIndex == ruleForm.caipinCollectionTypes) {//下拉框value对比,如果一致就赋值汉字
                        caipinCollectionTypesSelect.options[i].selected = true;
                }
            }
        }
        <!--  级联表的下拉框回显  -->
            var caipinSelect = document.getElementById("caipinSelect");
            if(caipinSelect != null && caipinOptions != null  && caipinOptions.length > 0 ) {
                for (var i = 0; i < caipinOptions.length; i++) {
                    if (caipinOptions[i].id == ruleForm.caipinId) {//下拉框value对比,如果一致就赋值汉字
                        caipinSelect.options[i+1].selected = true;
                        $("#caipinSelect" ).selectpicker('refresh');
                    }
                }
            }
            var yonghuSelect = document.getElementById("yonghuSelect");
            if(yonghuSelect != null && yonghuOptions != null  && yonghuOptions.length > 0 ) {
                for (var i = 0; i < yonghuOptions.length; i++) {
                    if (yonghuOptions[i].id == ruleForm.yonghuId) {//下拉框value对比,如果一致就赋值汉字
                        yonghuSelect.options[i+1].selected = true;
                        $("#yonghuSelect" ).selectpicker('refresh');
                    }
                }
            }
    }


    // 填充富文本框
    function setContent() {

        <!-- 当前表的填充富文本框 -->
    }
    // 获取富文本框内容
    function getContent() {

        <!-- 获取当前表的富文本框内容 -->
    }
    //数字检查
        <!-- 当前表的数字检查 -->

    function exit() {
        window.sessionStorage.removeItem("updateId");
        window.sessionStorage.removeItem('addcaipinCollection');
        window.location.href = "list.jsp";
    }
    // 表单校验
    function validform() {
        return $("#addOrUpdateForm").validate({
            rules: {
                caipinId: "required",
                yonghuId: "required",
                caipinCollectionTypes: "required",
            },
            messages: {
                caipinId: "菜品不能为空",
                yonghuId: "用户不能为空",
                caipinCollectionTypes: "类型不能为空",
            }
        }).form();
    }

    // 获取当前详情
    function getDetails() {
        var addcaipinCollection = window.sessionStorage.getItem("addcaipinCollection");
        if (addcaipinCollection != null && addcaipinCollection != "" && addcaipinCollection != "null") {
            //注册表单验证
            $(validform());

            $('#submitBtn').text('新增');

        } else {
            $('#submitBtn').text('修改');
            var userId = window.sessionStorage.getItem('userId');
            updateId = userId;//先赋值登录用户id
            var uId  = window.sessionStorage.getItem('updateId');//获取修改传过来的id
            if (uId != null && uId != "" && uId != "null") {
                //如果修改id不为空就赋值修改id
                updateId = uId;
            }
            window.sessionStorage.removeItem('updateId');
            http("caipinCollection/info/" + updateId, "GET", {}, (res) => {
                if(res.code == 0)
                {
                    ruleForm = res.data
                    // 是/否下拉框回显
                    setSelectOption();
                    // 设置图片src
                    showImg();
                    // 设置视频src
                    showVideo();
                    // 数据填充
                    dataBind();
                    // 富文本框回显
                    setContent();
                    //注册表单验证
                    $(validform());
                }

            });
        }
    }

    // 清除可能会重复渲染的selection
    function clear(className) {
        var elements = document.getElementsByClassName(className);
        for (var i = elements.length - 1; i >= 0; i--) {
            elements[i].parentNode.removeChild(elements[i]);
        }
    }

    function dateTimePick() {
        var insertTime = laydate.render({
            elem: '#insertTime-input'
            ,type: 'datetime'
        });
    }


    function dataBind() {


    <!--  级联表的数据回显  -->
        caipinDataBind();
        yonghuDataBind();


    <!--  当前表的数据回显  -->
        $("#updateId").val(ruleForm.id);
        $("#caipinId").val(ruleForm.caipinId);
        $("#yonghuId").val(ruleForm.yonghuId);

    }
    <!--  级联表的数据回显  -->
    function caipinDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#caipinId").val(ruleForm.id);

        $("#caipinName").val(ruleForm.caipinName);
        $("#caipinValue").val(ruleForm.caipinValue);
        $("#caipinKucunNumber").val(ruleForm.caipinKucunNumber);
        $("#caipinOldMoney").val(ruleForm.caipinOldMoney);
        $("#caipinNewMoney").val(ruleForm.caipinNewMoney);
        $("#caipinClicknum").val(ruleForm.caipinClicknum);
        $("#caipinContent").val(ruleForm.caipinContent);
        $("#shangxiaValue").val(ruleForm.shangxiaValue);
        $("#caipinPingfen").val(ruleForm.caipinPingfen);
    }

    function yonghuDataBind(){

                    <!-- 把id赋值给当前表的id-->
        $("#yonghuId").val(ruleForm.id);

        $("#yonghuName").val(ruleForm.yonghuName);
        $("#yonghuPhone").val(ruleForm.yonghuPhone);
        $("#yonghuIdNumber").val(ruleForm.yonghuIdNumber);
        $("#yonghuEmail").val(ruleForm.yonghuEmail);
        $("#yonghuSumJifen").val(ruleForm.yonghuSumJifen);
        $("#yonghuNewJifen").val(ruleForm.yonghuNewJifen);
        $("#huiyuandengjiValue").val(ruleForm.huiyuandengjiValue);
    }


    //图片显示
    function showImg() {
        <!--  当前表的图片  -->

        <!--  级联表的图片  -->
        caipinShowImg();
        yonghuShowImg();
    }


    <!--  级联表的图片  -->

    function caipinShowImg() {
        $("#caipinPhotoImg").attr("src",ruleForm.caipinPhoto);
    }


    function yonghuShowImg() {
        $("#yonghuPhotoImg").attr("src",ruleForm.yonghuPhoto);
    }



    //视频回显
    function showVideo() {
    <!--  当前表的视频  -->

    <!--  级联表的视频  -->
        caipinShowVideo();
        yonghuShowVideo();
    }


    <!--  级联表的视频  -->

    function caipinShowVideo() {
        $("#caipinPhotoV").attr("src",ruleForm.caipinPhoto);
    }

    function yonghuShowVideo() {
        $("#yonghuPhotoV").attr("src",ruleForm.yonghuPhoto);
    }



    $(document).ready(function () {
        //设置右上角用户名
        $('.dropdown-menu h5').html(window.sessionStorage.getItem('username'))
        //设置项目名
        $('.sidebar-header h3 a').html(projectName)
        //设置导航栏菜单
        setMenu();
        $('#exitBtn').on('click', function (e) {
            e.preventDefault();
            exit();
        });
        //初始化时间插件
        dateTimePick();
        //查询所有下拉框
            <!--  当前表的下拉框  -->
            caipinCollectionTypesSelect();
            <!-- 查询级联表的下拉框(用id做option,用名字及其他参数做名字级联修改) -->
            caipinSelect();
            yonghuSelect();



        // 初始化下拉框
            <!--  初始化当前表的下拉框  -->
            initializationCaipincollectiontypesSelect();
            <!--  初始化级联表的下拉框  -->
            initializationcaipinSelect();
            initializationyonghuSelect();

        $(".selectpicker" ).selectpicker('refresh');
        getDetails();
        //初始化上传按钮
        upload();
    <%@ include file="../../static/myInfo.js"%>
                $('#submitBtn').on('click', function (e) {
                    e.preventDefault();
                    //console.log("点击了...提交按钮");
                    submit();
                });
        readonly();
        window.sessionStorage.removeItem('addcaipinCollection');
    });

    function readonly() {
        if (window.sessionStorage.getItem('role') == '管理员') {
            //$('#jifen').attr('readonly', 'readonly');
            //$('#role').attr('style', 'pointer-events:none;width:450px;');
        }
		else if (window.sessionStorage.getItem('role') == '用户') {
            // $(".aaaaaa").remove();
            $(".yonghu").remove();//删除当前用户的信息
        }
        else{
            // alert("未知情况.......");
            // var replyTextUeditor = UE.getEditor('replyTextEditor');
            // replyTextUeditor.ready(function () {
            //     replyTextUeditor.setDisabled('fullscreen');
            // });
        }
    }

    //比较大小
    function compare() {
        var largerVal = null;
        var smallerVal = null;
        if (largerVal != null && smallerVal != null) {
            if (largerVal <= smallerVal) {
                alert(smallerName + '不能大于等于' + largerName);
                return false;
            }
        }
        return true;
    }


    // 用户登出
    <%@ include file="../../static/logout.jsp"%>
</script>
</body>

</html>
