<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>

<div id="example2_wrapper" class="dataTables_wrapper dt-bootstrap4">
                <table id="example2" class="table table-bordered table-hover dataTable dtr-inline" role="grid" aria-describedby="example2_info">
                  <thead>
	                  <tr >
				          <th>Date</th>
				          <th>nom</th>
				          <th>description</th>
				          <th></th>
	                  </tr>
                  </thead>
                  <tbody>      
        			<c:forEach  items="${listroles}" var ="role">	 
	                  <tr>
	                    <td>${role.dateCreation}</td>
	                    <td>${role.name}</td>
	                    <td>${role.description}</td>
	                    <td>
				          	<form method="post" action="<c:url value = "/delete-role${role.id}"/>">
				          		<input type="hidden" name="${_csrf.parameterName}"   value="${_csrf.token}" />
				          		<sec:authorize access="hasAnyAuthority('superadmin','details_role')">
				          		<a class="btn btn-primary" href="<c:url value = "/details-role${role.id}"/>" title="Details"><i class="fas fa-eye"></i></a>
				          		</sec:authorize>
				          		<sec:authorize access="hasAnyAuthority('superadmin','edit_role')">
				          		<a class="btn btn-success" href="<c:url value = "/edit-role${role.id}"/>" title="Modifier"><i class="fas fa-edit"></i></a>
				          		</sec:authorize>
				          		<sec:authorize access="hasAnyAuthority('superadmin','delete_role')">
				          		<button onclick = "return confirm('Etes-vous sur de le supprimer?')" class="btn btn-danger" title="Supprimer">
				          			<i class="fas fa-trash"></i>
				          		</button>
				          		</sec:authorize>
	                    	</form>
				        </td>
	                  </tr>
        			</c:forEach>
                  </tbody>
                </table>
          </div>
