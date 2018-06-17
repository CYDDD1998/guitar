<html>
<head>
    <title>
        test
    </title>
    <style type="text/css">
        table.hovertable {
            font-family: verdana,arial,sans-serif;
            font-size:11px;
            color:#333333;
            border-width: 1px;
            border-color: #999999;
            border-collapse: collapse;
        }
        table.hovertable th {
            background-color:#c3ddf1;
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #a9c6c9;
        }
        table.hovertable tr {
            background-color:#d4e3e5;
        }
        table.hovertable td {
            border-width: 1px;
            padding: 8px;
            border-style: solid;
            border-color: #a9c6c9;
            text-align: center;
        }

    </style>
</head>
<body>
<form action="/add" method="post">
    <table class="hovertable" width="1500px" style="font-size: large;">
        <thead>
        <th>名称</th>
        <th>价格</th>
        <th>类型</th>
        <th>颜色</th>
        <th>操作</th>
        </thead>
        <tbody>
        <tr>
            <td><input name="name" type="text"></td>
            <td><input name="price" type="text"></td>
            <td><input name="style" type="text"></td>
            <td><input name="color" type="text"></td>
            <td><input type="submit" value="添加" style="font-size: large;color: skyblue;width: auto"></td>
        </tr>
        </tbody>
    </table>
</form>
<br>

<form action="/findByName" method="post">
    <table class="hovertable" width="500" style="font-size: larger;">
        <tr>
            <td>通过名称查找</td>
            <td><input type="text" name="name"></td>
            <td><input type="submit" value="查找" style="font-size: large;color: skyblue;width: auto"></td>
        </tr>
    </table>
</form>

<div>
    <table class="hovertable" width="1500" style="font-size: larger;">
        <thead>
        <th>序号</th>
        <th>名称</th>
        <th>价格</th>
        <th>类型</th>
        <th>颜色</th>
        <th>操作</th>
        </thead>
        <tbody>
        <#list guitars as guitar >
        <tr>
            <td>${guitar.id!"未填写"}</td>
            <td>${guitar.name!"未填写"}</td>
            <td>${guitar.price!"未填写"}</td>
            <td>${guitar.style!"未填写"}</td>
            <td>${guitar.color!"未填写"}</td>
            <td><a href="/delete/${guitar.id!1}">删除</a></td>
        </tr>
        </#list>
        </tbody>
    </table>
</div>

</body>
</html>