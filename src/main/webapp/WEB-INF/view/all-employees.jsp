<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Ivan
  Date: 16.03.2023
  Time: 5:00
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<body>
<h2>All Employees</h2>
<br>
<table>
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
    </tr>
    <c:forEach var="emp" items="${allEmps}">
        <tr>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
        </tr>
    </c:forEach>

</table>
<br>
<input type="button" value="Add" onclick="window.location.href = 'addNewEmployee'"/>

</body>
</html>
