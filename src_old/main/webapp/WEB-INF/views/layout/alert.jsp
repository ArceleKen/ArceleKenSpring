<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<div class="card-body">
<c:if test="${error!=null}">
	<div class="alert alert-danger alert-dismissible">
       <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
       <h5><i class="icon fas fa-ban"></i> ${error}</h5>
     </div>
</c:if>
<c:if test="${success!=null}">
     <div class="alert alert-success alert-dismissible">
       <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
       <h5><i class="icon fas fa-check"></i>${success}</h5>
     </div>
</c:if>
</div>
               