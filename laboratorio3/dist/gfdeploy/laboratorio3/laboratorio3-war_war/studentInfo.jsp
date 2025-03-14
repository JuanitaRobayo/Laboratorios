<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>registrarse</title>
    </head>
    <body >
        <center>
            <div >
                <h1>registrarse</h1>
                <form action="./Student_servelt" method="POST">
                    <table>
                        <tr>
                            <td>Id</td>
                            <td><input type="text" name="studentId"  /></td>
                        </tr>
                        <tr>
                            <td>lUGAR DEL EVENTO</td>
                            <td><input type="text" name="firstName"  /></td>
                        </tr>
                        <tr>
                            <td>TIPO DE EVENTO</td>
                            <td><input type="text" name="lastName"  /></td>
                        </tr>
                        <tr>
                            <td>HORA DE RETRASO</td>
                            <td><input type="text" name="yearLevel"  /></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <center>
                                <input type="submit" name="action" value="registrarse" />
                                </center>
                            </td>
                        </tr>
                        
                    </table>
                </form>
                <br>
                <table border="1">
                    <th>ID</th>
                    <th>lUGAR DEL EVENTO</th>
                    <th>TIPO DE EVENTO</th>
                    <th>HORA DE RETRASO</th>
                        <c:forEach items="${allStudents}" var="stud">
                            <tr>
                                <td>${stud.studenId}</td>
                                <td>${stud.firstname}</td>
                                <td>${stud.lastname}</td>
                                <td>${stud.yearlevel}</td>
                            </tr>
                        </c:forEach> 
                </table>
            </div>
        </center>
        
    </body>
</html>
