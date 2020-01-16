<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="f"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Edit Menu Item</title>
<link rel="shortcut icon" href="images\truyum-logo-dark.png" />
<link rel="stylesheet" type="text/css" href="styles\style.css" />
<script src="js/script.js">
    
</script>
</head>
<body>
    <c:set var="menuItem" value="${menuItem}"></c:set>
    <header>
    <h2 class="heading">truYum</h2>
    <img src="images\truyum-logo-light.png" alt="truYum Logo" width=60 height=60 /> <nav> <a
        class="menu" href="ShowMenuItemListAdmin">Menu</a> </nav> </header>
    <form name="menuItemForm" method="post" action="EditMenuItem"
        onsubmit="return validateMenuItemForm()">
        <input type="hidden" name="id" value="${menuItem.getId()}">

        <table class="table-row2" cellspacing="10">
            <tr>
                <td><h1 colspan="4">Edit Menu Item</h1></td>
            </tr>
            <tr>
                <td colspan="4"><label for="title">Name</label></td>
            </tr>
            <tr>
                <td colspan="4"><input id="title" type="text" size="90" name="name"
                    value="${menuItem.getName()}" autocomplete="off" /><span id="terror"></span></td>
            </tr>
            <tr>
                <td><label for="price">Price(Rs.)</label></td>
                <td><label for="inStock">Active</label></td>
                <td><label for="dateOfLaunch">Date Of Launch</label></td>
                <td><label for="category">Category</label></td>
            </tr>
            <tr>
                <td><input id="price" type="text" name="price" value="${menuItem.getPrice()}"
                    autocomplete="off" /><span id="perror"></span></td>

                <td><c:choose>

                        <c:when test="${menuItem.isActive()==true}">
                            <input type="radio" name="active" value="Yes" checked />Yes
                    <input type="radio" name="active" value="No" />No
                    </c:when>
                        <c:otherwise>
                            <input type="radio" name="active" value="Yes" />Yes
                    <input type="radio" name="active" value="No" checked />No
                    
                    </c:otherwise>
                    </c:choose></td>


                <td><f:formatDate value="${menuItem.getDateOfLaunch()}" var="dateOfLaunch"
                        pattern="dd/MM/yyyy" /><input id="dateOfLaunch" type="text"
                    name="dateOfLaunch" value="${dateOfLaunch}" /><span id="derror"></span></td>
                <td><select name="category">
                        <option value="${menuItem.getCategory()}">${menuItem.getCategory()}</option>
                        <option value="starters">Starters</option>
                        <option value="maincourse">Main Course</option>
                        <option value="dessert">Dessert</option>
                        <option value="drinks">Drinks</option>
                </select><span id="cerror"></span></td>
            </tr>
            <tr>
                <td><c:choose>

                        <c:when test="${menuItem.isFreeDelivery()==true}">
                            <input type="checkbox" name="freeDelivery" value="Yes" checked />Free Delivery
                  
                    </c:when>
                        <c:otherwise>

                            <input type="checkbox" name="freeDelivery" value="No" />Free Delivery
                    
                    </c:otherwise>
                    </c:choose></td>
            </tr>
            <tr>
                <td><input class="submit" colspan="4" type="submit" value="Save" /></td>
            </tr>
        </table>
    </form>
    <footer>
    <p class="footer">Copyright&nbsp;&copy;&nbsp;2019</p>
    </footer>
</body>
</html>
