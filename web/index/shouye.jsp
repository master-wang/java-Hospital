
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>动物医院首页</title>
    <link rel="stylesheet" href="/css/bootstrap.css">
    <script src="/js/jquery.js"></script>
    <script src="/js/bootstrap.js"></script>
    <style>
        body{
            background-image: url("/imgs/shouyebk.jpg.jpg");
            background-attachment: fixed;
            background-size: cover;
        }
        #shouyiList{
            width: 1300px;
            background: rgba(111, 69, 67, 0.6);
            border-radius: 50px;
            float: left;
            margin-left: 200px;
            padding-top: 30px;
            padding-left: 30px;
        }
        #userInfo{
            width: 400px;
            height: 600px;
            float: right;
            margin-right: 50px;
        }
        .media{
            background: white;
        }
        #shouyiList .shouyiitem{
            width: 30%;
            float: left;
            margin-left: 10px;
        }
        #myModalpetsList {
            overflow:hidden;
        }
        #myModalpetsList .petItem{
            margin-top: 30px;
            width: 40%;
            float: left;
            margin-left: 5px;
        }
    </style>
</head>
<body>
    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">动物医院首页</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">

                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#" onclick="loginOut()">退出系统</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <div id="main">
        <div id="shouyiList">
            <div class="shouyiitem">
                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <div class="thumbnail">
                            <img src="..." alt="...">
                            <div class="caption">
                                <h3>Thumbnail label</h3>
                                <p>...</p>
                                <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="shouyiitem">
                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <div class="thumbnail">
                            <img src="..." alt="...">
                            <div class="caption">
                                <h3>Thumbnail label</h3>
                                <p>...</p>
                                <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="shouyiitem">
                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <div class="thumbnail">
                            <img src="..." alt="...">
                            <div class="caption">
                                <h3>Thumbnail label</h3>
                                <p>...</p>
                                <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="shouyiitem">
                <div class="row">
                    <div class="col-sm-12 col-md-12">
                        <div class="thumbnail">
                            <img src="..." alt="...">
                            <div class="caption">
                                <h3>Thumbnail label</h3>
                                <p>...</p>
                                <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="shouyiitem">
                <div class="row">
                    <div class="col-sm-6 col-md-4">
                        <div class="thumbnail">
                            <img src="..." alt="...">
                            <div class="caption">
                                <h3>Thumbnail label</h3>
                                <p>...</p>
                                <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="userInfo">
            <div class="media">
                <h2>我的信息</h2>
                <div class="media-left media-middle">
                    <a href="#">

                    </a>
                </div>
                <div class="media-body" id="userinfoitem">
                    <img src="" alt="" id="user_img" style="width: 100px;height: 100px;border-radius: 20px">
                    <h4 href="#" class="list-group-item" id="my_name">Dapibus ac facilisis in</h4>
                    <h4 href="#" class="list-group-item" id="my_username">Morbi leo risus</h4>
                    <h4 href="#" class="list-group-item" id="my_sex">Porta ac consectetur ac</h4>
                    <h4 href="#" class="list-group-item" id="my_phone">Porta ac consectetur ac</h4>
                    <h4 href="#" class="list-group-item" id="my_age">Porta ac consectetur ac</h4>
                    <h4 href="#" class="list-group-item" id="my_desc">Porta ac consectetur ac</h4>
                    <h4 href="#" class="list-group-item" >
                        <button  data-toggle="modal" data-target="#myModalupdateUserInfo" class="btn btn-success">完善信息</button></h4>
                </div>
            </div>
        </div>
    </div>
    <!-- 完善个人信息 -->
    <div class="modal fade" id="myModalupdateUserInfo" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabelupInfo">完善个人信息</h4>
                </div>
                <div class="modal-body">
                    <div class="input-group">
                        <span class="input-group-addon" >名字</span>
                        <input type="text" id="edit_name" class="form-control" placeholder="名字" aria-describedby="basic-addon1">
                    </div>
                    <select name="" id="edit_sex" value="男" style="height: 30px;width: 100px;">
                        <option value="男">男</option>
                        <option value="女">女</option>
                    </select>
                    <div class="input-group">
                        <span class="input-group-addon" >电话</span>
                        <input type="text" id="edit_phone" class="form-control" placeholder="电话" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" >年龄</span>
                        <input type="text" id="edit_age" class="form-control" placeholder="年龄" aria-describedby="basic-addon1">
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" >简介</span>
                        <input type="text" id="edit_desc" class="form-control" placeholder="简介" aria-describedby="basic-addon1">
                    </div>
                    <label style="font-size: 20px;color: white">头像</label>
                    <div class="input-group">
                        <span class="input-group-addon" >头像</span>
                        <input type="file" id="upuser_headImg" class="form-control">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary"  onclick="updateUserInfo()">修改</button>
                </div>
            </div>
        </div>
    </div>
    <!-- 预约挂号 -->
    <div class="modal fade" id="myModaluserYuyue" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabel">预约挂号</h4>
                </div>
                <div class="modal-body">
                    <input type="hidden" id="yueyu_uv_id">
                    <div class="input-group">
                        <span class="input-group-addon" >简介</span>
                        <input type="text" id="r_desc" class="form-control" placeholder="简介" aria-describedby="basic-addon1">
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="button" class="btn btn-primary" onclick="addYuyue()">预约</button>
                </div>
            </div>
        </div>
    </div>
    <!-- 我的预约单 -->
    <div class="modal fade" id="myModaluserYuyuedan" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabeldan">我的预约单</h4>
                </div>
                <div class="modal-body" id="wodeyuyueliebiao">
                    我的预约单
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <!-- 预约列表 -->
    <div class="modal fade" id="myModaluserYuyuedanlist" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabeldanlist">诊断列表</h4>
                </div>
                <div class="modal-body" id="zhengduanliebiao">

                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
    <!-- 宠物列表 -->
    <div style="width: 60%;margin-left: 20%;height: 900px;overflow: hidden;">
        <div class="modal fade" id="myModalpetsList" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="width: 60%;margin-left: 20%;height: 900px;overflow: scroll;overflow-x: hidden;">
            <div class="modal-dialog" role="document">
                <div class="modal-content" style="width: 700px">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                        <h4 class="modal-title" id="myModalLabelpetsList">我的宠物</h4>

                        <div class="form-group">
                            <label for="add_p_sex">性别</label>
                            <select name="" id="add_p_sex" value="公" style="height: 30px;width: 100px;">
                                <option value="公">公</option>
                                <option value="母">母</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label for="add_type">种类</label>
                            <input type="text" class="form-control" id="add_type" placeholder="种类">
                        </div>
                        <div class="form-group">
                            <label for="add_p_desc">简介</label>
                            <input type="text" class="form-control" id="add_p_desc" placeholder="简介">
                        </div>
                        <div class="form-group">
                            <label for="add_p_img">照片</label>
                            <input type="file" id="add_p_img">
                        </div>
                        <button type="submit" class="btn btn-default" onclick="addMyPet()">添加宠物</button>
                    </div>
                    <div class="modal-body" id="myPets">
                        <div class="petItem">
                            <div class="row">
                                <div class="col-sm-12 col-md-12">
                                    <div class="thumbnail">
                                        <img src="..." alt="...">
                                        <div class="caption">
                                            <h3>Thumbnail label</h3>
                                            <p>...</p>
                                            <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="petItem">
                            <div class="row">
                                <div class="col-sm-12 col-md-12">
                                    <div class="thumbnail">
                                        <img src="..." alt="...">
                                        <div class="caption">
                                            <h3>Thumbnail label</h3>
                                            <p>...</p>
                                            <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="petItem">
                            <div class="row">
                                <div class="col-sm-12 col-md-12">
                                    <div class="thumbnail">
                                        <img src="..." alt="...">
                                        <div class="caption">
                                            <h3>Thumbnail label</h3>
                                            <p>...</p>
                                            <p><a href="#" class="btn btn-primary" role="button">Button</a> <a href="#" class="btn btn-default" role="button">Button</a></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    </div>
                    <div class="modal-footer">

                    </div>
                </div>
            </div>
        </div>
    </div>
    <script>
        var userInfo = JSON.parse(window.localStorage.getItem("userInfo"))
        if(userInfo.is_vecter=="false"){
            $("#userinfoitem").append('<button type="button" class="btn btn-info"  data-toggle="modal" data-target="#myModaluserYuyuedan" >我的预约单</button>' +
                '<button type="button" class="btn btn-warning"   data-toggle="modal" data-target="#myModalpetsList" >我的宠物</button>')
        }else {
            $("#userinfoitem").append('<button type="button" class="btn btn-info"  data-toggle="modal" data-target="#myModaluserYuyuedan" >我的预约单</button>')
            $("#userinfoitem").append('<button type="button" class="btn btn-primary"  data-toggle="modal" data-target="#myModaluserYuyuedanlist" >预约列表</button>')
            $("#userinfoitem").append('<button type="button" class="btn btn-warning"   data-toggle="modal" data-target="#myModalpetsList" >我的宠物</button>')
        }
        function loginOut() {
            window.localStorage.clear()
            window.location.replace("http://localhost:8080/${pageContext.request.contextPath}")
        }
        console.log(userInfo)
        function userInfoToDom() {
            $("#my_name").html("姓名："+userInfo.name)
            $("#my_username").html("用户名："+userInfo.username)
            $("#my_sex").html("性别：："+userInfo.idCardNo)
            $("#my_phone").html("电话："+userInfo.phone)
            $("#my_age").html("年龄："+userInfo.age)
            $("#my_desc").html("简介："+userInfo.desc)
            if(!userInfo.headImg){
                $("#user_img").attr({"src":"/imgs/dog2.jpg"})
            }else {
                $("#user_img").attr({"src":userInfo.headImg})
            }
        }
        userInfoToDom();

        function updateUserInfo() {
            var data = {
                "id":userInfo.id,
                "name":$("#edit_name").val(),
                "sex":$("#edit_sex").val(),
                "phone":$("#edit_phone").val(),
                "age":$("#edit_age").val(),
                "desc":$("#edit_desc").val()
            }
            data=JSON.stringify(data);
            var formData = new FormData();
            for(var index = 0; index < $('#upuser_headImg')[0].files.length; index++){
                formData.append('file', $('#upuser_headImg')[0].files[index]);
            }
            console.log(formData);
            console.log(data);
            if ($("#edit_name").val()==""||
                $("#edit_sex").val()==""||
                $("#edit_phone").val()==""||
                $("#edit_age").val()==""||
                $("#edit_desc").val()==""||
                $('#upuser_headImg')[0].files.length==0
            ){
                alert("信息不能为空！！");
            } else {
                $.ajax({
                    url:'${pageContext.request.contextPath}/updateUserInfo',
                    type:'post',
                    data:data,
                    dataType:'json',
                    contentType:'application/json',
                    success:function(data){
                        console.log(data);
                        userupImg()
                    },
                    error:function(data){
                        console.log("zou err");
                        console.log(data)
                        userupImg()
                    }
                });
            }
        }
        function userupImg(){
            var formData = new FormData();
            for(var index = 0; index < $('#upuser_headImg')[0].files.length; index++){
                formData.append('file', $('#upuser_headImg')[0].files[index]);
            }
            formData.append('id', userInfo.id);
            $.ajax({
                url:'${pageContext.request.contextPath}/updateUserInfoImg?id='+userInfo.id,
                type:'post',
                cache: false,
                data:formData,
                processData: false,
                contentType: false,
                enctype:"multipart/form-data",
                success:function(data){
                    console.log("图片成功！")
                    alert("更新成功！")
                    userInfo = data.userInfo;
                    window.localStorage.setItem("userInfo",userInfo)
                    return  userInfoToDom();
                },
                error:function(data){
                    console.log("图片走失败")
                }
            });
        }
        function getShouyiList() {
            $.get("${pageContext.request.contextPath}/getUserShouyiList",function (data) {
                var userList = data.Userlist
                var str = ``;
                for(var i =0;i<userList.length;i++){
                    console.log(userList[i].username)
                    str += `
                    <div class="shouyiitem">
                        <div class="row">
                            <div class="col-sm-12 col-md-12">
                                <div class="thumbnail">
                                    <img src="`+userList[i].headImg+`" alt="..." style="width: 100%;height: 224px">
                                    <div class="caption">
                                        <h3>姓名：`+userList[i].name+`</h3>
                                        <p>性别：`+userList[i].sex+`</p>
                                        <p>电话：`+userList[i].phone+`</p>
                                        <p>年龄：`+userList[i].age+`</p>
                                        <p>简介：`+userList[i].desc+`</p>
                                        <p><a href="#" class="btn btn-primary" role="button"  data-toggle="modal" data-target="#myModaluserYuyue" uid="`+userList[i].id+`">预约挂号</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>`
                }
                $("#shouyiList").html(str)
            },"json")
        }
        getShouyiList();

        $(document).on("click","#shouyiList .btn-primary",function () {
            var uv_id =$(this).attr("uid")
            console.log("预约的兽医id:"+uv_id)
            $("#yueyu_uv_id").val(uv_id)
            
        })
        // $(document).on("click","#myModaluserYuyue .btn-primary",function () {
        //
        //
        // })
        function addYuyue() {
            var uu_id =userInfo.id
            var uv_id =$("#yueyu_uv_id").val()
            var r_desc = $("#r_desc").val()
            var data ={
                uu_id:uu_id,
                uv_id:uv_id,
                r_desc:r_desc
            }

            console.log(data)
            $.ajax({
                url:'${pageContext.request.contextPath}/registrationAdd',
                type:'post',
                data:data,
                success:function(data){
                    console.log(data);
                    alert("预约成功！")

                },
                error:function(data){
                    console.log("zou err");
                    console.log(data)
                }
            });
        }
        $(document).on("click","#userinfoitem .btn-info",function () {
            var id = userInfo.id;
            console.log("我的预约单")
            $.get("${pageContext.request.contextPath}/registrationGetMyYuyueList",{uu_id:id},function (data) {
                var List = data.list
                console.log(List)
                var str = `<ul class="list-group">`;
                for (var i =0;i<List.length;i++){
                    str+=`
                      <li class="list-group-item">医生：`+List[i].name+`---预约描述：`+List[i].r_desc+`－－是否已诊断：`+List[i].is_ok+` <button type="button"　 uid="`+List[i].r_id+`" class="btn btn-danger">删除我的预约</button></li>
                    `
                }
                str+=`</ul>`
                $("#wodeyuyueliebiao").html(str)
            },"json")
        })
        $(document).on("click","#wodeyuyueliebiao .btn-danger",function () {
            var r_id = $(this).attr("uid")
            var id = userInfo.id;
            if(confirm("确定删除吗？")){
                $.get("${pageContext.request.contextPath}/registrationGetMyYuyueListDel",{uu_id:id,r_id:r_id},function (data) {
                    alert("删除成功")
                    var List = data.list
                    console.log(List)
                    var str = `<ul class="list-group">`;
                    for (var i =0;i<List.length;i++){
                        str+=`
                      <li class="list-group-item">医生：`+List[i].name+`---预约描述：`+List[i].r_desc+`－－是否已诊断：`+List[i].is_ok+` <button type="button"　 uid="`+List[i].r_id+`" class="btn btn-danger">删除我的预约</button></li>
                    `
                    }
                    str+=`</ul>`
                    $("#wodeyuyueliebiao").html(str)
                },"json")
            }

        })
        $(document).on("click","#userinfoitem .btn-primary",function () {
            var uv_id = userInfo.id;
            console.log("我的预约单")
            $.get("${pageContext.request.contextPath}/registrationGetMyzhenduanList",{uv_id:uv_id},function (data) {
                var List = data.list
                console.log(List)
                var str = `<ul class="list-group">`;
                for (var i =0;i<List.length;i++){
                    str+=`
                      <li class="list-group-item">用户：`+List[i].name+`---预约描述：`+List[i].r_desc+`－－是否已诊断：`+List[i].is_ok+` <button type="button"　 uid="`+List[i].r_id+`" class="btn btn-danger">已诊断</button></li>
                    `
                }
                str+=`</ul>`
                $("#zhengduanliebiao").html(str)
            },"json")

        })
        $(document).on("click","#zhengduanliebiao .btn-danger",function () {
            var r_id = $(this).attr("uid")
            var id = userInfo.id;
            if(confirm("确定将其变成已诊断吗？")){
                $.get("${pageContext.request.contextPath}/registrationGetMyzhenduanListOk",{uu_id:id,r_id:r_id},function (data) {
                    alert("已诊断！")
                    var List = data.list
                    console.log(List)
                    var str = `<ul class="list-group">`;
                    for (var i =0;i<List.length;i++){
                        str+=`
                      <li class="list-group-item">医生：`+List[i].name+`---预约描述：`+List[i].r_desc+`－－是否已诊断：`+List[i].is_ok+` <button type="button"　 uid="`+List[i].r_id+`" class="btn btn-danger">已诊断</button></li>
                    `
                    }
                    str+=`</ul>`
                    $("#zhengduanliebiao").html(str)
                },"json")
            }

        })

        $(document).on("click","#userinfoitem .btn-warning",function () {
            var id = userInfo.id;
            console.log("获取宠物的人ｉｄ:"+id)
            $.get("${pageContext.request.contextPath}/getMyPetsList",{u_id:id},function (data) {
                var petsList = data.list;
                var str = ``;
                for(var i =0;i<petsList.length;i++){
                    str += `
                    <div class="petItem">
                        <div class="row">
                            <div class="col-sm-12 col-md-12">
                                <div class="thumbnail">
                                    <img src="`+petsList[i].p_img+`" alt="..." style="width: 100%;height: 160px">
                                    <div class="caption">
                                        <h3>宠物性别：`+petsList[i].p_sex+`</h3>
                                        <p>宠物描述：`+petsList[i].p_desc+`</p>
                                        <p>宠物类别：`+petsList[i].type+`</p>
                                        <p><a href="#" class="btn btn-primary" role="button" uid="`+petsList[i].p_id+`">删除宠物</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>`
                }
                $("#myPets").html(str)

            },"json")

        })
        $(document).on("click","#myPets .btn-primary",function () {
            var p_id = $(this).attr("uid")
            if(confirm("确定删除吗？")){
                $.get("${pageContext.request.contextPath}/delMyPetById",{p_id:p_id},function (data) {
                    alert("删除成功")
                    var id = userInfo.id;
                    console.log("获取宠物的人ｉｄ:"+id)
                    $.get("${pageContext.request.contextPath}/getMyPetsList",{u_id:id},function (data) {
                        var petsList = data.list;
                        var str = ``;
                        for(var i =0;i<petsList.length;i++){
                            str += `
                    <div class="petItem">
                        <div class="row">
                            <div class="col-sm-12 col-md-12">
                                <div class="thumbnail">
                                    <img src="`+petsList[i].p_img+`" alt="..." style="width: 100%;height: 160px">
                                    <div class="caption">
                                        <h3>宠物性别：`+petsList[i].p_sex+`</h3>
                                        <p>宠物描述：`+petsList[i].p_desc+`</p>
                                        <p>宠物类别：`+petsList[i].type+`</p>
                                        <p><a href="#" class="btn btn-primary" role="button"  uid="`+petsList[i].p_id+`">删除宠物</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>`
                        }
                        $("#myPets").html(str)

                    },"json")
                },"json")
            }

        })

        function addMyPet() {
            var data = {
                "u_id":userInfo.id,
                "p_sex":$("#add_p_sex").val(),
                "p_desc":$("#add_p_desc").val(),
                "type":$("#add_type").val(),
            }
            data=JSON.stringify(data);
            var formData = new FormData();
            for(var index = 0; index < $('#add_p_img')[0].files.length; index++){
                formData.append('file', $('#add_p_img')[0].files[index]);
            }
            console.log(formData);
            console.log(data);
            if ($("#add_p_sex").val()==""||
                $("#add_p_desc").val()==""||
                $("#add_type").val()==""
            ){
                alert("信息不能为空！！");
            } else {
                $.ajax({
                    url:'${pageContext.request.contextPath}/addMyPetInfo',
                    type:'post',
                    data:data,
                    dataType:'json',
                    contentType:'application/json',
                    success:function(data){
                        console.log(data);
                        petupImg(data.p_id)
                    },
                    error:function(data){
                        console.log("zou err");
                        console.log(data)
                        petupImg()
                    }
                });
            }
        }
        
        function petupImg(p_id) {
            var formData = new FormData();
            for(var index = 0; index < $('#add_p_img')[0].files.length; index++){
                formData.append('file', $('#add_p_img')[0].files[index]);
            }
            formData.append('p_id', p_id);
            $.ajax({
                url:'${pageContext.request.contextPath}/addMyPetInfoImg?p_id='+p_id+'&u_id='+userInfo.id,
                type:'post',
                cache: false,
                data:formData,
                processData: false,
                contentType: false,
                enctype:"multipart/form-data",
                success:function(data){
                    console.log("图片成功！")
                    alert("添加成功！")
                    var id = userInfo.id;
                    console.log("获取宠物的人ｉｄ:"+id)
                    $.get("${pageContext.request.contextPath}/getMyPetsList",{u_id:id},function (data) {
                        var petsList = data.list;
                        var str = ``;
                        for(var i =0;i<petsList.length;i++){
                            str += `
                    <div class="petItem">
                        <div class="row">
                            <div class="col-sm-12 col-md-12">
                                <div class="thumbnail">
                                    <img src="`+petsList[i].p_img+`" alt="..." style="width: 100%;height: 160px">
                                    <div class="caption">
                                        <h3>宠物性别：`+petsList[i].p_sex+`</h3>
                                        <p>宠物描述：`+petsList[i].p_desc+`</p>
                                        <p>宠物类别：`+petsList[i].type+`</p>
                                        <p><a href="#" class="btn btn-primary" role="button" uid="`+petsList[i].p_id+`">删除宠物</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>`
                        }
                        $("#myPets").html(str)

                    },"json")
                },
                error:function(data){
                    console.log("图片走失败")
                }
            });
        }
    </script>
</body>
</html>
