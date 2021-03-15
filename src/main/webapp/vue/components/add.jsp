<%@ include file="../services/jstl.jsp" %>
<div class="div_form_add panel panel-primary col-xs-4">
    <div class="panel-heading">new user</div>
    <div class="panel-body">
    	<frm:form modelAttribute="command" method="post" action="/save">
            <div class="form-group">
                <label for="username">username</label>
                <frm:input type="text" class="form-control" path="username" placeholder="Enter username" />
            </div>
            <div class="form-group">
                <label for="email">email</label>
                <frm:input type="text" class="form-control" path="email" placeholder="Enter email" />
            </div>
            <div class="form-group">
                <label for="password">password</label>
                <frm:input type="text" class="form-control" path="password" placeholder="Enter password" />
            </div>
            <input type="submit" class="btn btn-primary" value="Valider" />
        </frm:form>
    </div>
</div>