<%--
  Created by IntelliJ IDEA.
  User: 吉俊烁
  Date: 2020/10/5
  Time: 20:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<table border="1px" width="500px">
    <tr>
        <td>商品编号</td>
        <td>商品名称</td>
        <td>商品价格</td>
        <td>库存数量</td>
        <td>订单状态</td>
        <td>操作</td>
    </tr>
    <c:forEach var="g" items="${goods}">
        <tr>
            <td>${g.id}</td>
            <td>${g.goodsname}</td>
            <td>${g.goodsprice}</td>
            <td>${g.goodscount}</td>
            <td>
                <c:if test="${g.billstatus==0}">待处理</c:if>
                <c:if test="${g.billstatus==1}">处理中</c:if>
                <c:if test="${g.billstatus==2}">已处理</c:if>

            </td>
            <td><a href="/toselByid?id=${g.id}">修改</a></td>
        </tr>
    </c:forEach>

</table>
<p style="color: red;">${success}</p>
</body>
</html>
