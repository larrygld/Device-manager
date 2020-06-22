<!DOCTYPE html>
<html lang="en">
<#--头部文件-->
<head>
    <meta charset="utf-8">
    <title>管理系统</title>
    <link href="https://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="/static/css/style.css">

    <script type="text/javascript" src="/static/js/jquery-1.12.4.js"></script>

    <script type="text/javascript">
        var getting = {
            url:"memory",
            type:"post",
            dataType:"json",
            success:function(data){
                $("#testtable").find('tbody').find('tr').remove();
                var tr;
                for(var v in data) {
                    tr = '<td>' + data[v].sid + '</td>' + '<td>' + data[v].timeStamp + '</td>' + '<td>' + data[v].usage + '</td>'
                    $("#testtable").find('tbody').append('<tr>' + tr + '</tr>')
                }
                for (var v in data) {
                    console.log("sid:" + data[v].sid);
                    console.log("timeStamp:" + data[v].timeStamp);
                    console.log("usage:" + data[v].usage);
                }

            },
            error:function(error){
                alert(error);
            }
        }
        /*每三秒请求一次数据库*/
        $.ajax(getting);
        window.setInterval(function(){$.ajax(getting)}, 10000);
    </script>
</head>
<body>
<div id="wrapper" class="toggled">

<#--边栏sidebar-->
    <#include "./common/nav.ftl">

<#--主要内容content-->
    <div id="page-content-wrapper">
        <div class="container-fluid">
            <div class="row clearfix">
                <div class="col-md-12 column">


                    <table class="table table-bordered table-condensed text-center" id="testtable">
                        <thead>
                        <tr >
                            <th class="text-center">SID</th>
                            <th class="text-center">TimeStamp</th>
                            <th class="text-center">Usage</th>
                        </tr>
                        </thead>
                        <tbody>
                            <#--表格内容由ajax来填充-->
                        </tbody>

                    </table>
                </div>

            </div>
        </div>
    </div>

</div>

</body>
</html>