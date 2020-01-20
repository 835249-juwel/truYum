<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Cart</title>
<link rel="shortcut icon" href="images\truyum-logo-dark.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
    <header>
    <h2 class="heading">truYum</h2>
    <img src="images\truyum-logo-light.png" alt="truYum Logo" width=60 height=60 /> <nav> <a
        class="menu" href="ShowMenuItemListCustomer">Menu</a> <a class="cart" href="ShowCart">Cart</a>
    </nav> </header>
    <c:set var="cart" value="${cart}"></c:set>
    <table cellspacing="10">
        <tr>
            <td><h1>Cart</h1></td>
        </tr>

        <tr>
            <td colspan="3"><c:if test="${removeCartItemStatus==true }">
                    <p>Item removed from Cart successfully</p>
                </c:if></td>
        </tr>

        <col width="250" />
        <tr>
            <th class="name"><label>Name</label></th>
            <th align="center"><label>Free Delivery</label></th>
            <th class="price"><label>Price</label></th>
        </tr>
        <c:forEach items="${menuItem}" var="menuItem">

            <tr>
                <td class="name">${menuItem.getName()}</td>
                <td align="center"><c:choose>
                        <c:when test="${menuItem.isFreeDelivery()==true }">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose>
                <td class="price">${menuItem.getPrice()}</td>

                <td align="center"><a href="RemoveCart?menuItemId=${menuItem.getId()}">Delete</a></td>
            </tr>
        </c:forEach>

        <tr>
            <th align="left">Total : Rs. ${cart.getTotal()}</th>
        </tr>
    </table>
    <footer>
    <p class="footer">Copyright&nbsp;&copy;&nbsp;2019</p>
    </footer>
</body>
</html>
