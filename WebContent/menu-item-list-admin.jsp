<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Menu Item List Admin</title>
<link rel="shortcut icon" href="images\truyum-logo-dark.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
</head>
<body>
    <header>
    <h2 class="heading">truYum</h2>
    <img src="images\truyum-logo-light.png" alt="truYum Logo" width=60 height=60 /> <nav> <a
        class="menu" href="ShowMenuItemListAdmin">Menu</a> </nav> </header>
    <table cellspacing="10">
        <tr>
            <td><h1>Menu Items</h1></td>
            <col width="250" />
        </tr>
        <tr>
            <th class="name"><label>Name</label></th>
            <th class="price"><label>Price</label></th>
            <th align="center"><label>Active</label></th>
            <th align="center"><label>Date of Launch</label></th>
            <th align="center"><label>Category</label></th>
            <th align="center"><label>Free Delivery</label></th>
            <th align="center">Action</th>
        </tr>

        <c:forEach items="${menuItem}" var="menuItem">

            <tr>
                <td class="name">${menuItem.getName()}</td>
                <td class="price">${menuItem.getPrice()}</td>
                <td align="center"><c:choose>
                        <c:when test="${menuItem.isActive()==true }">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose>
                <td align="center"><f:formatDate value="${menuItem.getDateOfLaunch()}"
                        pattern="dd/MM/yyyy" /></td>
                <td align="center">${menuItem.getCategory()}</td>
                <td align="center"><c:choose>
                        <c:when test="${menuItem.isFreeDelivery()==true }">Yes</c:when>
                        <c:otherwise>No</c:otherwise>
                    </c:choose>
                <td align="center"><a href="ShowEditMenuItem?menuItemId=${menuItem.getId()}">Edit</a></td>
            </tr>
        </c:forEach>
    </table>
    <footer>
    <p class="footer">Copyright&nbsp;&copy;&nbsp;2019</p>
    </footer>
</body>
</html>