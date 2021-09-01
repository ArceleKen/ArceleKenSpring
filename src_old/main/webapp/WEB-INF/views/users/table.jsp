<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<div id="example2_wrapper" class="dataTables_wrapper dt-bootstrap4">
                <table id="example2" class="table table-bordered table-hover dataTable dtr-inline" role="grid" aria-describedby="example2_info">
                  <thead>
	                  <tr >
	                  	<th>
	                  		date Creation
	                  	</th>
	                  	<th >
	                  		Nom
	                  	</th>
	                  	<th >
	                  		Login
	                  	</th>
	                  	<th>
	                  		Statut
	                  	</th>
	                  	<th></th>
	                  </tr>
                  </thead>
                  <tbody>      
        			<c:forEach  items="${listusers}" var ="user">	 
	                  <tr>
	                    <td>${user.dateCreation}</td>
	                    <td>${user.name}</td>
	                    <td>${user.username}</td>
	                    <td>
	                    	<c:choose>
							    <c:when test="${user.enabled}">
									activé
							    </c:when>    
							    <c:otherwise>
							    	<small class="badge badge-danger">desactivé</small>
							    </c:otherwise>
							</c:choose>
	                    </td>
	                    <td>
				          	<form method="post" action="<c:url value = "desactive-user"/>">
				          		<input type="hidden" name="${_csrf.parameterName}"   value="${_csrf.token}" />
				          		<input type="hidden" name="userId" value="${user.id}"/>
				          		<sec:authorize access="hasAnyAuthority('superadmin','details_user')">
				          		<a class="btn btn-primary" href="<c:url value = "/details-user${user.id}"/>" title="Details"><i class="fas fa-eye"></i></a>
				          		</sec:authorize>
				          		<sec:authorize access="hasAnyAuthority('superadmin','edit_user')">
				          		<a class="btn btn-success" href="<c:url value = "/edit-user${user.id}"/>" title="Modifier"><i class="fas fa-edit"></i></a>
				          		</sec:authorize>
				          		<sec:authorize access="hasAnyAuthority('superadmin','enable_or_disable_user')">
				          		<button onclick = "return confirm('Etes-vous sur de mener cette action?')" class="btn btn-${user.enabled ? "danger" : "warning"}" title="${user.enabled ? "Desactiver" : "Activer"}">
				          			<i class="fas fa-${user.enabled ? "times" : "check"}"></i>
				          		</button>
				          		</sec:authorize>
	                    	</form>
	                    </td>
	                  </tr>
        			</c:forEach>
                  </tbody>
                </table>
          </div>
