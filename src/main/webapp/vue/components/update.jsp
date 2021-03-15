<%@ include file="../services/jstl.jsp" %>
<div class="div_form_add panel panel-primary  col-xs-4">
   <div class="panel-heading">update user</div>
    <div class="panel-body">
        <select name="update" class="sel_users col-xs-12 form-control" aria-label="Default select example" >
         <option value=""></option>
        <c:forEach var="u" items="${users}">   
           <option value="${u.id}"
            data-id="${u.id}"
            data-username="${u.username}"
            data-email="${u.email}"
            data-password="${u.password}"
            >${u.username}</option>
            </c:forEach>
      </select>
    </div>
    <div class="panel-body">
    	<frm:form modelAttribute="command"  method="post" action="/save">
            <div class="form-group">
                <label for="username">username</label>
                <frm:input type="hidden" class="id form-control" path="id"  />  
                 <frm:input type="text" class="username form-control" path="username" placeholder="Enter username" />
            </div>
            <div class="form-group">
                <label for="email">email</label>
                <frm:input type="text" class="email form-control" path="email" placeholder="Enter email" />
            </div>
            <div class="form-group">
                <label for="password">password</label>
                <frm:input type="text" class="password form-control" path="password" placeholder="Enter password" />
            </div>
            <input type="submit" class="btn btn-primary" value="Valider" />
        </frm:form>
    </div>
</div>