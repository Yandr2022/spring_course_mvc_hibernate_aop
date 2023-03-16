<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%--
  Created by IntelliJ IDEA.
  User: Ivan
  Date: 16.03.2023
  Time: 6:35
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html>
<body>
<h2>Employee Info</h2>
<br>
<form:form action="saveEmployee" modelAttribute="employee">

    <form:hidden path="id"/>
  Name:<form:input path="name"/>
  <br>
  Surname:<form:input path="surname"/>
  <br>
  Department:<form:input path="department"/>
  <br>
 Salary:<form:input path="salary"/>
  <br>
  <input type="submit" value="OK">
</form:form>
</body>
</html>
