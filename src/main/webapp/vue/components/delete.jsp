<%@ include file="../services/jstl.jsp" %>
<div class="div_form_add panel panel-primary  col-xs-4">
   <div class="panel-heading">delete user</div>
    <div class="panel-body">
      
    </div>
    <div class="panel-body">
    	<frm:form modelAttribute="command"  method="post" action="/delete">
            <div class="form-group">
      <frm:select path="id" class="sel_users col-xs-12 form-control" aria-label="Default select example" >
      <option value=""></option>
        <c:forEach var="u" items="${users}">   
           <option value="${u.id}">${u.username}</option>
        </c:forEach>
      </frm:select> 
            </div>
            <input type="submit" class="btn btn-primary" value="Valider" />
        </frm:form>
    </div>
</div>