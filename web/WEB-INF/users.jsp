<%-- 
    Document   : users
    Created on : Oct 29, 2020, 10:29:19 AM
    Author     : 789648
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="users.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=IBM+Plex+Serif:300&display=swap" rel="stylesheet"> 
        
        <title>User editing</title>
    </head>
    <body>
    <div class="column">
        <div class="col-30">
            <h1>Add Users</h1>
        <form method="post" action="user">
            Email: <input type="text" name="addEmail"/><br>
            First Name: <input type="text" name="addFName"/><br>
            Last Name: <input type="text" name="addLName"/><br>
            Password: <input type="password" name="addPassword"/><br>
            Role: <select name="addRole">
                <option value="1">System Admin</option>
                <option value="2">Regular User</option>
                <option value="3">Company Admin</option>
            </select><br>
        
            <input type="submit" value="Add">
            <input type="hidden" name="action" value="add">
        </form>       
    </div>
    </div> 
        
    <div class="column">
        <div class="col-30">
            <h1>Manage Users</h1>
                <table>
                <c:forEach var="user" items="${users}">
                <tr>
                    <td>${user.email}</td>
                    <td>${user.firstName}</td>
                    <td>${user.lastName}</td>
                    <td>${user.role}</td>
                </tr>
                </c:forEach>
                </table>
        </div>
    </div>
        
    <div class="column">
        <div class="col-30"> 
            <h1>Edit Users</h1>
        <form method="post" action="user">
            Email: <input type="text" name="editEmail"/><br>
            First Name: <input type="text" name="editFName"/><br>
            Last Name: <input type="text" name="editLName"/><br>
            Password: <input type="password" name="editPassword"/><br>
            Role: <select name="editRole">
                <option value="bedroom">System Admin</option>
                <option value="garage">Regular User</option>
                <option value="kitchen">Company Admin</option>
            </select><br>        
            <input type="submit" value="Save">
            <input type="hidden" name="action" value="save">
            <input type="submit" value="Cancel">
            <input type="hidden" name="action" value="cancel">
        </form> 
        </div>
    </div>
    </body>
</html>
