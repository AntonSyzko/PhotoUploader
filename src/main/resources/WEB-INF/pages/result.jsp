<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
    <head>
        <title>Prog.kiev.ua</title>
    </head>
    <body>
        <div align="center">
            <%--<h1>Your photo id is: ${photo_id}</h1>--%>

            <%--<input type="submit" value="Delete Photo" onclick="window.location='/delete/${photo_id}';" />--%>
            <%--<input type="submit" value="Upload New" onclick="window.location='/';" />--%>

            <br/><br/><img src="/photo/${photo_id}" />
            <h2>all my photos</h2>

            <%--<c:if test="${not empty photos}">--%>

                <ul>
                    <c:forEach var="photo_id" items="${photos}">
                        <li>${photo_id}</li>
                        <li><img src="/photo/${photo_id}" /></li>

                    </c:forEach>
                </ul>
                <c:forEach var="photos" items="${photos}">
                    <li>${photos}</li>




                </c:forEach>

            <%--</c:if>--%>
        </div>
    </body>
</html>
