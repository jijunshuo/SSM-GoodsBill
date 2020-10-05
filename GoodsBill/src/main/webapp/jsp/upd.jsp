<%--
  Created by IntelliJ IDEA.
  User: 吉俊烁
  Date: 2020/10/5
  Time: 20:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="/upd" method="post">
    <table border="1px">

        <tr>
            <td>商品编号:</td>
            <input type="hidden" name="goodsdistrict" value="${goods.goodsdistrict}">
            <td><input type="text" name="id" value="${goods.id}" readonly/></td>
        </tr>
        <tr>
            <td>商品名称:</td>
            <td><input type="text" name="goodsname" value="${goods.goodsname}"/></td>
        </tr>
        <tr>
            <td>商品价格:</td>
            <td><input type="text" name="goodsprice" value="${goods.goodsprice}"/></td>
        </tr>
        <tr>
            <td>库存数量:</td>
            <td><input type="text" name="goodscount" value="${goods.goodscount}"/></td>
        </tr>
        <tr>
            <td>订单状态:</td>
            <td>
                <select name="billstatus">
                    <c:if test="${goods.billstatus==0}">
                        <option value="${goods.billstatus}">待处理</option>
                    </c:if>
                    <c:if test="${goods.billstatus==1}">
                        <option value="${goods.billstatus}">处理中</option>
                    </c:if>
                    <c:if test="${goods.billstatus==2}">
                        <option value="${goods.billstatus}">已处理</option>
                    </c:if>
                    <option value="0">待处理</option>
                    <option value="1">处理中</option>
                    <option value="2">已处理</option>
                </select>
            </td>
        </tr>
        <tr>
            <td>
                <input type="submit" value="提交"/>
                <input type="reset" value="返回"/>
            </td>

        </tr>
    </table>

</form>
</body>
</html>
