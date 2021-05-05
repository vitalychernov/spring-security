<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<body>

<h2>Information For All Employees</h2>

<security:authorize access="hasRole('HR')">
    <br><br>
    <input type="button" value="Salary"
           onclick="window.location.href = 'hr_info'">
    Only for HR staff
</security:authorize>

<security:authorize access="hasRole('MANAGER')">
    <br><br>
    <input type="button" value="Performance"
           onclick="window.location.href = 'manager_info'">
    Only for Managers
</security:authorize>

</body>
</html>
