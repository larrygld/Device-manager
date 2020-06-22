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
        /*先请求初始数据*/
        $.ajax(getting);
        /*然后每间隔三秒重新请求一次数据库*/
        window.setInterval(function(){$.ajax(getting)}, 3000);
    </script>
</head>