
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>动物医院后台管理首页</title>
    <link rel="stylesheet" href="/css/bootstrap.css">
    <script src="/js/jquery.js"></script>
    <script src="/js/bootstrap.js"></script>
    <style>
        body{
            background-image: url("/imgs/adminbk.jpg");
            background-attachment: fixed;
            background-size: cover;
        }
        #main{
            width: 100%;
        }
        #infoBox{
            width: 76%;
            margin-left: 10%;
            padding: 2%;
            background: rgba(83, 155, 153, 0.6);

        }
        #infoBox .jumbotron{
            border-radius: 20px;
        }
    </style>
</head>
<body>

    <nav class="navbar navbar-default ">
        <div class="container-fluid">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="#">动物医院后台管理首页</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">操作管理 <span class="caret"></span></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"  onclick="getUserList()">用户操作</a></li>
                            <li><a href="#"  onclick="getBoKaoList()">兽医操作</a></li>
                            <li><a href="#" onclick="geuYuyueList()">预约号操作</a></li>
                        </ul>
                    </li>
                </ul>

                <ul class="nav navbar-nav navbar-right">
                    <li><a href="#" onclick="loginOut()">退出系统</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <div id="main">
        <div id="infoBox">
            <div class="jumbotron" id="shouyehuanying">
                <h1>欢迎管理员</h1>
                <p style="text-indent: 2em">动物医院后台管理首页 </p>
            </div>
        </div>

    </div>
    <!-- 用户的添加-->
    <!-- Modal -->
    <div class="modal fade" id="myModaluseradd" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabeluseradd">添加用户</h4>
                </div>
                <div class="modal-body">
                    <label style="font-size: 20px;color: white">用戶名</label>
                    <div class="input-group">
                        <input type="text" id="add_username" class="form-control" placeholder="用戶名" aria-describedby="basic-addon1">
                    </div>
                    <label style="font-size: 20px;color: white">密碼</label>
                    <div class="input-group">
                        <input type="password" id="add_password" class="form-control" placeholder="密碼" aria-describedby="basic-addon1">
                    </div>
                    <br>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary">添加</button>
                </div>
            </div>
        </div>
    </div>
    <!-- 用户的修改-->
    <!-- Modal -->
    <div class="modal fade" id="myModaluseredit" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                    <h4 class="modal-title" id="myModalLabeluseredit">用户的修改</h4>
                </div>
                <input type="hidden" id="edit_id">
                <div class="modal-body">
                    <div class="input-group">
                        <span class="input-group-addon" >用戶名</span>
                        <input type="text" id="edit_username" class="form-control" placeholder="用戶名" aria-describedby="basic-addon1" readonly>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon" >密碼</span>
                        <input type="password" id="edit_password" class="form-control" placeholder="密碼" aria-describedby="basic-addon1">
                    </div>
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
                    <select name="" id="edit_is_vecter" value="是" style="height: 30px;width: 100px;">
                        <option value="是">兽医</option>
                        <option value="false">非兽医</option>
                    </select>
                    <select name="" id="edit_is_admin" value="false" style="height: 30px;width: 100px;">
                        <option value="false">普通用户</option>
                        <option value="true">管理员</option>
                    </select>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">取消</button>
                    <button type="button" class="btn btn-primary">修改</button>
                </div>
            </div>
        </div>
    </div>
    <script>
        var getuserlistbox = 1;
        function loginOut() {
            window.localStorage.clear()
            window.location.replace("http://localhost:8080/${pageContext.request.contextPath}")
        }
        //用户的操作
        function getUserList() {
            getuserlistbox = 1;
            console.log("userList")
            $.get("${pageContext.request.contextPath}/getUserList",function (data) {
                console.log(data);
                var userList = data.Userlist
                var str = `
                <div class="jumbotron" id="shouyehuanying">
                <h1>用户列表</h1><button type="button" class="btn btn-primary btn-lg" data-toggle="modal" data-target="#myModaluseradd" style="float: right">添加</button>
                <table class="table table-hover table-bordered table-striped" id="userTable">
                        <tr>
                        <td>序号</td>
                        <td>用户名</td>
                        <td>密码</td>
                        <td>名字</td>
                        <td>性别</td>
                        <td>电话</td>
                        <td>年龄</td>
                        <td>简介</td>
                        <td>是否是兽医</td>
                        <td>是否管理员</td>
                        <td>操作</td>
                    </tr>`;
                for(var i =0;i<userList.length;i++){
                    console.log(userList[i].username)
                    str += `<tr>
                    <td>`+(i+1)+`</td>
                    <td>`+userList[i].username+`</td>
                    <td>`+userList[i].password+`</td>
                    <td>`+userList[i].name+`</td>
                    <td>`+userList[i].sex+`</td>
                    <td>`+userList[i].phone+`</td>
                    <td>`+userList[i].age+`</td>
                    <td>`+userList[i].desc+`</td>
                    <td>`+userList[i].is_vecter+`</td>
                    <td>`+userList[i].is_admin+`</td>
                    <td><button type="button" class="btn btn-warning" data-toggle="modal" data-target="#myModaluseredit" uid="`+userList[i].id+`">修改</button>
                        <button type="button" class="btn btn-danger" uid="`+userList[i].id+`">删除</button></td>
                </tr>`
                }
                str+=`</table></div>
            </div>`;
                $("#infoBox").html(str)
            },"json")
        }

        $(document).on("click","#userTable .btn-danger",function () {
            var id =$(this).attr("uid")
            if(confirm("你是否要删除用户！！！")){
                $.get("${pageContext.request.contextPath}/deleteUserById",{id :id},function (data) {
                    console.log(data);
                    if(getuserlistbox == 1){
                        return getUserList()
                    }else {
                        return getBoKaoList()
                    }


                },"json")
            }
        })
        $(document).on("click","#userTable .btn-warning",function () {
            var id =$(this).attr("uid")

            $.get("${pageContext.request.contextPath}/getUserInfoById",{id :id},function (data) {
                console.log(data);
                var userInfo = data.userInfo;
                $("#edit_username").val(userInfo.username)
                $("#edit_password").val(userInfo.password)
                $("#edit_name").val(userInfo.name)
                $("#edit_sex").val(userInfo.sex)
                $("#edit_phone").val(userInfo.phone)
                $("#edit_age").val(userInfo.age)
                $("#edit_desc").val(userInfo.desc)
                $("#edit_is_vecter").val(userInfo.is_vecter)
                $("#edit_is_admin").val(userInfo.is_admin)
                $("#edit_id").val(userInfo.id);
            },"json")

        })

        function deleUserById(id) {
            console.log(id)
            if(confirm("是否要删除ｉd为"+id+"的用户")){
                alert("删除成功")
            }
        }
        $(document).on("click","#myModaluseradd .btn-primary",function () {
            var username = $("#add_username").val();
            var password = $("#add_password").val();
            if(username==""||password==""){
                alert("添加信息不能为空！")
                return
            }
            var data = {
                username:username,
                password:password,
            }
            //data = JSON.stringify(data);
            console.log(data);
            $.ajax({
                url:'${pageContext.request.contextPath}/adminUserAdd',
                type:'post',
                data:data,
                success:function(data){
                    console.log(data);
                    alert("添加成功！")
                    if(getuserlistbox == 1){
                        return getUserList()
                    }else {
                        return getBoKaoList()
                    }
                },
                error:function(data){
                    console.log("zou err");
                    console.log(data)
                }
            });
        })
        $(document).on("click","#myModaluseredit .btn-primary",function () {
            var username= $("#edit_username").val()
            var password= $("#edit_password").val()
            var name = $("#edit_name").val()
            var sex= $("#edit_sex").val()
            var phone= $("#edit_phone").val()
            var age= $("#edit_age").val()
            var desc= $("#edit_desc").val()
            var is_vecter= $("#edit_is_vecter").val()
            var is_admin= $("#edit_is_admin").val()
            var id= $("#edit_id").val();
            if(username==""||password==""||name==""||sex==""||phone==""||age==""||desc==""||is_vecter==""||is_admin==""){
                alert("修改的信息不能为空！")
                return
            }
            var data = {
                id:id,
                username:username,
                password:password,
                name:name,
                sex:sex,
                phone:phone,
                age:age,
                desc:desc,
                is_vecter:is_vecter,
                is_admin:is_admin
            }
            //data = JSON.stringify(data);
            console.log(data);
            $.ajax({
                url:'${pageContext.request.contextPath}/adminUserEditById',
                type:'post',
                data:data,
                success:function(data){
                    console.log(data);
                    alert("修改成功！")
                    if(getuserlistbox == 1){
                        return getUserList()
                    }else {
                        return getBoKaoList()
                    }
                },
                error:function(data){
                    console.log("zou err");
                    console.log(data)
                }
            });
        })

        //　兽医的列表
        function getBoKaoList() {
            getuserlistbox = 2;
            $.get("${pageContext.request.contextPath}/getUserShouyiList",function (data) {
                console.log(data);
                var userList = data.Userlist
                var str = `
                <div class="jumbotron" id="shouyehuanying">
                <h1>兽医列表</h1>
                <table class="table table-hover table-bordered table-striped" id="userTable">
                        <tr>
                        <td>序号</td>
                        <td>用户名</td>
                        <td>密码</td>
                        <td>名字</td>
                        <td>性别</td>
                        <td>电话</td>
                        <td>年龄</td>
                        <td>简介</td>
                        <td>是否是兽医</td>
                        <td>是否管理员</td>
                        <td>操作</td>
                    </tr>`;
                for(var i =0;i<userList.length;i++){
                    console.log(userList[i].username)
                    str += `<tr>
                    <td>`+(i+1)+`</td>
                    <td>`+userList[i].username+`</td>
                    <td>`+userList[i].password+`</td>
                    <td>`+userList[i].name+`</td>
                    <td>`+userList[i].sex+`</td>
                    <td>`+userList[i].phone+`</td>
                    <td>`+userList[i].age+`</td>
                    <td>`+userList[i].desc+`</td>
                    <td>`+userList[i].is_vecter+`</td>
                    <td>`+userList[i].is_admin+`</td>
                    <td><button type="button" class="btn btn-warning" data-toggle="modal" data-target="#myModaluseredit" uid="`+userList[i].id+`">修改</button>
                        <button type="button" class="btn btn-danger" uid="`+userList[i].id+`">删除</button></td>
                </tr>`
                }
                str+=`</table></div>
            </div>`;
                $("#infoBox").html(str)
            },"json")
        }
        
        function geuYuyueList() {
            $.get("${pageContext.request.contextPath}/geuYuyueList",function (data) {
                console.log(data);
                var userList = data.list
                var str = `
                <div class="jumbotron" id="shouyehuanying">
                <h1>兽医列表</h1>
                <table class="table table-hover table-bordered table-striped" id="yuyueTable">
                        <tr>
                        <td>序号</td>
                        <td>名字</td>
                        <td>性别</td>
                        <td>电话</td>
                        <td>年龄</td>
                        <td>预约描述</td>
                        <td>是否已诊断</td>
                        <td>操作</td>
                    </tr>`;
                for(var i =0;i<userList.length;i++){
                    str += `<tr>
                    <td>`+(i+1)+`</td>
                    <td>`+userList[i].name+`</td>
                    <td>`+userList[i].sex+`</td>
                    <td>`+userList[i].phone+`</td>
                    <td>`+userList[i].age+`</td>
                    <td>`+userList[i].r_desc+`</td>
                    <td>`+userList[i].is_ok+`</td>
                    <td>
                        <button type="button" class="btn btn-danger" uid="`+userList[i].r_id+`">删除</button></td>
                </tr>`
                }
                str+=`</table></div>
            </div>`;
                $("#infoBox").html(str)
            },"json")
        }
        $(document).on("click","#yuyueTable .btn-danger",function () {
            var id =$(this).attr("uid")
            if(confirm("你是否要删除用户！！！")){
                $.get("${pageContext.request.contextPath}/registrationDelById",{r_id :id},function (data) {
                    console.log(data);
                    if(getuserlistbox == 1){
                        return geuYuyueList()
                    }else {
                        return geuYuyueList()
                    }


                },"json")
            }
        })
    </script>
</body>
</html>
