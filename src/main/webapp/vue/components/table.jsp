<%@ include file="../services/jstl.jsp" %>
<table class="table table-striped">
    <caption></caption>
    <thead>
        <tr>
            <th scope="col">ID</th>
            <th scope="col">USER</th>
            <th scope="col">EMAIL</th>
            <th scope="col">PSSWD</th>
        </tr>
    </thead>
    <tbody>
    <c:forEach var="u" items="${users}">        
        <tr>
            <td>${u.id}</td>
            <td>${u.username}</td>
            <td>${u.email}</td>
            <td>${u.password}</td>
        </tr>
        </c:forEach>
    </tbody>
</table>